import 'package:board_game_randomizer/data/game_data.dart';
import 'package:board_game_randomizer/models/game.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:math';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Board Game Randomizer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Main(),
    );
  }
}

T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final TextEditingController gameController = TextEditingController();

  Games? selectedGame;
  List<Games> games = [];
  List<Expansions> expansions = [];
  List<GameData> data = [Cascadia(), ResArcana(), Wingspan()];
  List<Options> options = [];
  bool baseChecked = true;

  @override
  void initState() {
    super.initState();
    _initDb();
  }

  _initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "games.db");

    // Make sure the directory exists
    try {
      await Directory(databasesPath).create(recursive: true);
    } catch (_) {}

    // Delete the database
    await deleteDatabase(path);

    var db = await openDatabase(path,
        version: 1, onCreate: _onCreate, onConfigure: _onConfigure);
    var resp = await db.rawQuery('SELECT * FROM "Games"');
    for (var g in resp) {
      games.add(Games.fromMap(g));
    }

    setState(() {
      games = games;
    });
  }

  _onConfigure(Database db) async {
    // Add support for foreign_keys
    await db.execute("PRAGMA foreign_keys = ON");
  }

  _onCreate(Database db, int version) async {
    // Create the tables
    await db.execute(
        "CREATE TABLE Games (id INTEGER PRIMARY KEY, name TEXT, count INTEGER, grouping INTEGER)");
    await db.execute(
        "CREATE TABLE Expansions (id INTEGER PRIMARY KEY autoincrement, name TEXT, game INTEGER,FOREIGN KEY (game) REFERENCES Games (id)  )");
    await db.execute(
        "CREATE TABLE Options (id INTEGER PRIMARY KEY autoincrement, name TEXT, game INTEGER,grouping INTEGER, expansion TEXT, depends TEXT,imageUrl TEXT, FOREIGN KEY (game) REFERENCES Games (id))");

    // Populate data
    for (var d in data) {
      await db.insert('Games', d.game().toMap());
      for (var e in d.expansions()) {
        await db.insert('Expansions', e.toMap());
      }
      for (var o in d.options()) {
        await db.insert('Options', o.toMap());
      }
    }
  }

  Future<List<Expansions>> _getExpansions(Games game) async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "games.db");
    var db = await openDatabase(path);

    List<Expansions> expansions = [];
    var resp = await db
        .rawQuery('SELECT * FROM "Expansions" where game = ?', [game.id]);
    for (var e in resp) {
      expansions.add(Expansions.fromMap(e));
    }
    return expansions;
  }

  Future<List<Options>> _getOptions() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "games.db");
    var db = await openDatabase(path);

    List<Options> options = [];
    if (baseChecked) {
      var resp = await db.rawQuery(
          'SELECT * FROM "Options" where game = ? and expansion IS NULL',
          [selectedGame!.id]);
      for (var o in resp) {
        options.add(Options.fromMap(o));
      }
    }
    // get expansions
    for (var e in expansions) {
      if (e.checked) {
        var resp = await db.rawQuery(
            'SELECT * FROM "Options" where game = ? and expansion = ?',
            [selectedGame!.id, e.name]);
        for (var o in resp) {
          options.add(Options.fromMap(o));
        }
      }
    }
    if (selectedGame!.grouping == 1) {
      options = randomizeGroupings(options, selectedGame!.count);
    } else {
      options = getRandomElements(options, selectedGame!.count);
    }

    return options;
  }

  List<Options> randomizeGroupings(List<Options> options, int count) {
    List<Options> randomized = [];
    Set<String?> categories = options.map((e) => e.grouping).toSet();
    for (var cat in categories) {
      randomized.add(getRandomElement(
          options.where((element) => element.grouping == cat).toList()));
    }
    return randomized;
  }

  List<Options> getRandomElements(List<Options> options, int count) {
    options.shuffle();
    List<Options> randomized = [];
    Set<String> randmizedNames = {};
    while (randomized.length <= count - 1) {
      if (options.isEmpty) {
        return [];
      }
      var option = options.removeAt(0);
      if (option.depends == null || !randmizedNames.contains(option.depends)) {
        randomized.add(option);
        randmizedNames.add(option.name);
      }
    }
    return randomized;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 50),
          Center(
              child: DropdownMenu<Games>(
            width: 300,
            controller: gameController,
            requestFocusOnTap: true,
            label: const Text('Game'),
            onSelected: (Games? game) async {
              if (game != null) {
                expansions = await _getExpansions(game);
                setState(() {
                  expansions = expansions;
                  selectedGame = game;
                  options = [];
                });
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            dropdownMenuEntries:
                games.map<DropdownMenuEntry<Games>>((Games game) {
              return DropdownMenuEntry<Games>(
                  value: game,
                  label: game.name,
                  leadingIcon: Image(
                      height: 30,
                      width: 30,
                      image:
                          AssetImage('assets/bgg_images/${game.name}.jpeg')));
            }).toList(),
          )),
          CheckboxListTile(
              value: baseChecked,
              onChanged: (bool? value) {
                setState(() {
                  baseChecked = !baseChecked;
                });
              },
              title: const Text("Base")),
          expansions.isNotEmpty
              ? Center(
                  child: Column(
                      children: expansions
                          .map((Expansions e) => CheckboxListTile(
                              value: e.checked,
                              onChanged: (bool? value) {
                                e.setCheck(value!);
                                setState(() {
                                  expansions = expansions;
                                });
                              },
                              title: Text(e.name)))
                          .toList()))
              : Container(),
          expansions.isNotEmpty ? const Divider(height: 5) : Container(),
          options.isNotEmpty
              ? Center(
                  child: Column(
                      children: options
                          .map((Options e) => ListTile(title: Text(e.name)))
                          .toList()))
              : Container(),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              options = await _getOptions();
              if (mounted && options.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Not enough options selected')));
              }
              setState(() {
                options = options;
              });
            },
            child: const Text('Randomize'),
          ),
        ],
      ),
    );
  }
}
