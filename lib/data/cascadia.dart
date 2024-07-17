import 'package:board_game_randomizer/models/game.dart';

class Cascadia extends GameData {
  static const int id = 1;

  @override
  Games game() => Games(id: id, name: "Cascadia", count: 1, grouping: 1);

  @override
  List<Expansions> expansions() => [
        Expansions(id: 0, name: "Kickstarter", game: id),
        Expansions(id: 0, name: "Landmarks", game: id),
        Expansions(id: 0, name: "Tantrum House Season 8", game: id),
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
        const Options(
            id: 0,
            name: "Bear E",
            game: id,
            grouping: "Bear",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Bear F",
            game: id,
            grouping: "Bear",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Bear G",
            game: id,
            grouping: "Bear",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Elk E",
            game: id,
            grouping: "Elk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Elk F",
            game: id,
            grouping: "Elk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Elk G",
            game: id,
            grouping: "Elk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Salmon E",
            game: id,
            grouping: "Salmon",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Salmon F",
            game: id,
            grouping: "Salmon",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Salmon G",
            game: id,
            grouping: "Salmon",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Hawk E",
            game: id,
            grouping: "Hawk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Hawk F",
            game: id,
            grouping: "Hawk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Hawk G",
            game: id,
            grouping: "Hawk",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Fox E",
            game: id,
            grouping: "Fox",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Fox F",
            game: id,
            grouping: "Fox",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Fox G",
            game: id,
            grouping: "Fox",
            expansion: "Landmarks"),
        const Options(
            id: 0,
            name: "Bear: Fishing Along",
            game: id,
            grouping: "Bear",
            expansion: "Tantrum House Season 8"),
        const Options(
            id: 0,
            name: "Hawk: Forest Friends",
            game: id,
            grouping: "Hawk",
            expansion: "Tantrum House Season 8"),
      ];
}
