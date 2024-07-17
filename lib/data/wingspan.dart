import 'package:board_game_randomizer/models/game.dart';

class Wingspan extends GameData {
  static const int id = 3;

  @override
  Games game() => Games(id: id, name: "Wingspan", count: 4, grouping: 0);

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
