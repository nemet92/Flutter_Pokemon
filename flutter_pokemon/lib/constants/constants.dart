// class Constants {
//   Constants._();

//   static const String title = "Pokedex";

//   static const TextStyle
// }

import 'package:flutter/material.dart';

mixin PokemonText {
  String title = "Pokedex";
}

mixin getPokemonImage {
  String pokedexImage = "images/pokeball.png";
}
mixin getPokemenTextStyle {
  TextStyle titleStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 52);
  }
}
mixin getPokemenNameTextStyle {
  TextStyle titleNameStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28);
  }
}

mixin getPokemenChipTextStyle {
  TextStyle typeChipStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);
  }
}
