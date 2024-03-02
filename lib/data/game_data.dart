import 'package:board_game_randomizer/models/game.dart';

class ResArcana extends GameData {
  static const int id = 1;

  @override
  Games game() =>
      const Games(id: id, name: "Res Arcana", count: 4, grouping: 0);

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

class Cascadia extends GameData {
  static const int id = 2;

  @override
  Games game() => const Games(id: id, name: "Cascadia", count: 1, grouping: 1);

  @override
  List<Expansions> expansions() => [
        Expansions(id: 0, name: "Kickstarter", game: id),
      ];

  @override
  List<Options> options() => [
        const Options(id: 0, name: "Bear A", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Bear B", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Bear C", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Bear D", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Elk A", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Elk B", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Elk C", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Elk D", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Salmon A", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Salmon B", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Salmon C", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Salmon D", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Hawk A", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Hawk B", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Hawk C", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Hawk D", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Fox A", game: id, grouping: "Fox"),
        const Options(id: 0, name: "Fox B", game: id, grouping: "Fox"),
        const Options(id: 0, name: "Fox C", game: id, grouping: "Fox"),
        const Options(id: 0, name: "Fox D", game: id, grouping: "Fox"),
        const Options(
            id: 0,
            name: "Bear: Equal Groups",
            game: id,
            grouping: "Bear",
            expansion: "Kickstarter"),
        const Options(
            id: 0,
            name: "Elk: Oriented Pairs",
            game: id,
            grouping: "Elk",
            expansion: "Kickstarter"),
        const Options(
            id: 0,
            name: "Salmon: Gathering",
            game: id,
            grouping: "Salmon",
            expansion: "Kickstarter"),
        const Options(
            id: 0,
            name: "Hawk: On the Edge",
            game: id,
            grouping: "Hawk",
            expansion: "Kickstarter"),
        const Options(
            id: 0,
            name: "Fox: Nearby Diversity",
            game: id,
            grouping: "Fox",
            expansion: "Kickstarter"),
      ];
}
