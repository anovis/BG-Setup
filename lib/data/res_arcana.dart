import 'package:board_game_randomizer/models/game.dart';

class ResArcana extends GameData {
  static const int id = 2;

  @override
  Games game() => Games(id: id, name: "Res Arcana", count: 4, grouping: 0);

  @override
  List<Expansions> expansions() => [
        Expansions(id: 0, name: "Lux et Tenebrae", game: id),
        Expansions(id: 0, name: "Perlae Imperii", game: id)
      ];

  @override
  List<Options> options() => [
        const Options(
            id: 0, name: "Coral Castle", game: id, depends: "Sunken Reef"),
        const Options(
            id: 0, name: "Sunken Reef", game: id, depends: "Coral Castle"),
        const Options(
            id: 0, name: "Dwarven Mines", game: id, depends: "Cursed Forge"),
        const Options(
            id: 0, name: "Cursed Forge", game: id, depends: "Dwarven Mines"),
        const Options(
            id: 0,
            name: "Sacred Grove",
            game: id,
            depends: "Alchemist's Tower"),
        const Options(
            id: 0,
            name: "Alchemist's Tower",
            game: id,
            depends: "Sacred Grove"),
        const Options(
            id: 0,
            name: "Sorcerer's Bestiary",
            game: id,
            depends: "Dragon's Liar"),
        const Options(
            id: 0,
            name: "Dragon's Liar",
            game: id,
            depends: "Sorcerer's Bestiary"),
        const Options(
            id: 0,
            name: "Sacrificial Pit",
            game: id,
            depends: "Catacombs of the Dead"),
        const Options(
            id: 0,
            name: "Catacombs of the Dead",
            game: id,
            depends: "Sacrificial Pit"),
        const Options(
            id: 0,
            name: "Dragon Aerie",
            game: id,
            depends: "Crystal Keep",
            expansion: "Lux et Tenebrae"),
        const Options(
            id: 0,
            name: "Crystal Keep",
            game: id,
            depends: "Dragon Aerie",
            expansion: "Lux et Tenebrae"),
        const Options(
            id: 0,
            name: "Temple of the Abyss",
            game: id,
            depends: "Gate of Hell",
            expansion: "Lux et Tenebrae"),
        const Options(
            id: 0,
            name: "Crystal Keep",
            game: id,
            depends: "Gate of Hell",
            expansion: "Lux et Tenebrae"),
        const Options(
            id: 0,
            name: "Mystical Menagerie",
            game: id,
            depends: "Alchemical Workshop",
            expansion: "Perlae Imperii"),
        const Options(
            id: 0,
            name: "Alchemical Workshop",
            game: id,
            depends: "Mystical Menagerie",
            expansion: "Perlae Imperii"),
        const Options(
            id: 0,
            name: "Blood Isle",
            game: id,
            depends: "Pearl Bed",
            expansion: "Perlae Imperii"),
        const Options(
            id: 0,
            name: "Pearl Bed",
            game: id,
            depends: "Blood Isle",
            expansion: "Perlae Imperii"),
      ];
}
