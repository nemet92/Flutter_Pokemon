import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin PokemonText {
  String title = "Pokedex";
}

mixin getPokemonImage {
  String pokedexImage = "images/pokeball.png";
}
mixin getPokemenTextStyle {
  TextStyle titleStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(52));
  }
}
mixin getPokemenNameTextStyle {
  TextStyle titleNameStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }
}

mixin getPokemenChipTextStyle {
  TextStyle typeChipStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: _calculateFontSize(20));
  }
}

_calculateFontSize(int size) {
  if (ScreenUtil().orientation == Orientation.portrait) {
    return size.sp;
  } else {
    return (size * 1.5);
  }
}
