// class Constants {
//   Constants._();

//   static const String title = "Pokedex";

//   static const TextStyle
// }

import 'package:flutter/material.dart';

mixin PokemonText {
  String title = "Pokedex";
}

mixin PokemonImage {
  String pokedexImage = "images/pokeball.png";
}
mixin PokemenTextStyle {
  TextStyle titleStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }
}
