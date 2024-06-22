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
        Expansions(id: 0, name: "Landmarks", game: id),
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
        const Options(id: 0, name: "Bear E", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Bear F", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Bear G", game: id, grouping: "Bear"),
        const Options(id: 0, name: "Elk E", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Elk F", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Elk G", game: id, grouping: "Elk"),
        const Options(id: 0, name: "Salmon E", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Salmon F", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Salmon G", game: id, grouping: "Salmon"),
        const Options(id: 0, name: "Hawk E", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Hawk F", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Hawk G", game: id, grouping: "Hawk"),
        const Options(id: 0, name: "Fox E", game: id, grouping: "Fox"),
        const Options(id: 0, name: "Fox F", game: id, grouping: "Fox"),
        const Options(id: 0, name: "Fox G", game: id, grouping: "Fox"),
      ];
}

class Wingspan extends GameData {
  static const int id = 3;

  @override
  Games game() => const Games(id: id, name: "Wingspan", count: 4, grouping: 0);

  @override
  List<Expansions> expansions() => [
        Expansions(id: 0, name: "Europe", game: id),
        Expansions(id: 0, name: "Oceania", game: id),
        Expansions(id: 0, name: "Asia", game: id)
      ];

  @override
  List<Options> options() => [
        const Options(
            id: 0, name: "Bird in Forest", game: id, depends: "Egg in Forest"),
        const Options(
            id: 0, name: "Egg in Forest", game: id, depends: "Bird in Forest"),
        const Options(
            id: 0,
            name: "Bird in Grassland",
            game: id,
            depends: "Egg in Grassland"),
        const Options(
            id: 0,
            name: "Egg in Grassland",
            game: id,
            depends: "Bird in Grassland"),
        const Options(
            id: 0,
            name: "Bird in Wetland",
            game: id,
            depends: "Egg in Wetland"),
        const Options(
            id: 0,
            name: "Egg in Wetland",
            game: id,
            depends: "Bird in Wetland"),
        const Options(
            id: 0,
            name: "Bowl Birds with Egg",
            game: id,
            depends: "Egg in Bowl"),
        const Options(
            id: 0,
            name: "Egg in Bowl",
            game: id,
            depends: "Bowl Birds with Egg"),
        const Options(
            id: 0,
            name: "Cavity Birds with Egg",
            game: id,
            depends: "Egg in Cavity"),
        const Options(
            id: 0,
            name: "Egg in Cavity",
            game: id,
            depends: "Cavity Birds with Egg"),
        const Options(
            id: 0,
            name: "Ground Birds with Egg",
            game: id,
            depends: "Egg in Ground"),
        const Options(
            id: 0,
            name: "Egg in Ground",
            game: id,
            depends: "Ground Birds with Egg"),
        const Options(
            id: 0,
            name: "Platform Birds with Egg",
            game: id,
            depends: "Egg in Platform"),
        const Options(
            id: 0,
            name: "Egg in Platform",
            game: id,
            depends: "Platform Birds with Egg"),
        const Options(
            id: 0, name: "Set of Eggs", game: id, depends: "Total Birds"),
        const Options(
            id: 0, name: "Total Birds", game: id, depends: "Set of Eggs"),

        // Europe Expansion
        const Options(
            id: 0,
            name: "Birds with Tucked Cards",
            game: id,
            depends: "Food Cost of Birds",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Food Cost of Birds",
            game: id,
            depends: "Birds with Tucked Cards",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Birds in Row",
            game: id,
            depends: "Filled Columns",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Filled Columns",
            game: id,
            depends: "Birds in Row",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Birds no Egg",
            game: id,
            depends: "Bird > 4 Feather",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Bird > 4 Feather",
            game: id,
            depends: "Birds no Egg",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Bird Card in Hand",
            game: id,
            depends: "Food in Supply",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Food in Supply",
            game: id,
            depends: "Bird Card in Hand",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "Brown Powers",
            game: id,
            depends: "White & No Powers",
            expansion: "Europe"),
        const Options(
            id: 0,
            name: "White & No Powers",
            game: id,
            depends: "Brown Powers",
            expansion: "Europe"),

        // Oceania Expansion
        const Options(
            id: 0,
            name: "Cubes in Play a Bird",
            game: id,
            depends: "Bird <= 3 Feather",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Bird <= 3 Feather",
            game: id,
            depends: "Cubes in Play a Bird",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Beak Pointing Left",
            game: id,
            depends: "Beak Pointing Right",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Beak Pointing Right",
            game: id,
            depends: "Beak Pointing Left",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Fruit + Seed Cost",
            game: id,
            depends: "Invertebrate Cost",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Invertebrate Cost",
            game: id,
            depends: "Fruit + Seed Cost",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "Rodent + Fish Cost",
            game: id,
            depends: "No Goal",
            expansion: "Oceania"),
        const Options(
            id: 0,
            name: "No Goal",
            game: id,
            depends: "Rodent + Fish Cost",
            expansion: "Oceania"),

        // Asia Expansion
        const Options(
            id: 0,
            name: "Token in any one horizontal row",
            game: id,
            depends: "Horizontal rows with at least 1 of your tokens",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Horizontal rows with at least 1 of your tokens",
            game: id,
            depends: "Token in any one horizontal row",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token on edge of map",
            game: id,
            depends: "Token not on edge of map",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token not on edge of map",
            game: id,
            depends: "Token on edge of map",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token on any nest",
            game: id,
            depends: "Token on any food",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token on any food",
            game: id,
            depends: "Token on any nest",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token in forest",
            game: id,
            depends: "Token on pairs of matching symbols",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token on pairs of matching symbols",
            game: id,
            depends: "Token in forest",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token in grassland",
            game: id,
            depends: "Total tokens on map",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Total tokens on map",
            game: id,
            depends: "Token in grassland",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Token in wetland",
            game: id,
            depends: "Fewest tokens on bonus spaces",
            expansion: "Asia"),
        const Options(
            id: 0,
            name: "Fewest tokens on bonus spaces",
            game: id,
            depends: "Token in wetland",
            expansion: "Asia"),
      ];
}
