import 'package:board_game_randomizer/models/game.dart';

class CascadiaLandmarks extends GameData {
  static const int id = 4;
  static const List<String> terrains = [
    "Forests",
    "Wetlands",
    "Prairies",
    "Mountains",
    "Rivers"
  ];
  // Letters A-L
  List<String> letters =
      List.generate(12, (index) => String.fromCharCode(65 + index));

  @override
  Games game() => Games(
      id: id,
      name: "Cascadia Landmarks",
      count: 0,
      grouping: 1,
      playerScaling: 1);

  @override
  List<Options> options() => [
        for (var env in terrains)
          for (var letter in letters)
            Options(id: 0, name: "$env $letter", game: id, grouping: env)
      ];
}
