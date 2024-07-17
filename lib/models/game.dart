class Games {
  final int id;
  final String name;
  final int count;
  final int grouping;
  final int? playerScaling;

  Games(
      {required this.id,
      required this.name,
      required this.count,
      required this.grouping,
      this.playerScaling});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'count': count,
      'grouping': grouping,
      'playerScaling': playerScaling
    };
  }

  Games.fromMap(Map<String, Object?> map)
      : id = map['id'] as int,
        name = map['name'] as String,
        count = map['count'] as int,
        grouping = map['grouping'] as int,
        playerScaling = map.containsKey('playerScaling')
            ? map['playerScaling'] as int?
            : null;
}

class Expansions {
  final int id;
  final String name;
  final int game;
  bool checked;

  Expansions(
      {required this.id,
      required this.name,
      required this.game,
      this.checked = false});

  Map<String, dynamic> toMap() {
    return {'name': name, 'game': game};
  }

  Expansions.fromMap(Map<String, Object?> map)
      : id = map['id'] as int,
        name = map['name'] as String,
        game = map['game'] as int,
        checked = false;

  setCheck(bool check) {
    checked = check;
  }
}

class Options {
  final int id;
  final String name;
  final int game;
  final String? grouping;
  final String? expansion;
  final String? depends;
  final String? imageUrl;

  const Options(
      {required this.id,
      required this.name,
      required this.game,
      this.grouping,
      this.expansion,
      this.depends,
      this.imageUrl});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'game': game,
      'grouping': grouping,
      "expansion": expansion,
      'depends': depends,
      "imageUrl": imageUrl
    };
  }

  Options.fromMap(Map<String, Object?> map)
      : id = map['id'] as int,
        name = map['name'] as String,
        game = map['game'] as int,
        grouping = map['grouping'] as String?,
        expansion = map['expansion'] as String?,
        depends = map['depends'] as String?,
        imageUrl = map['imageUrl'] as String?;
}

class GameData {
  Games game() => Games(id: 0, name: "test", count: 0, grouping: 0);
  List<Expansions> expansions() => [];
  List<Options> options() => [];
}
