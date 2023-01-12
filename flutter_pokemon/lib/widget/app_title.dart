import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle>
    with PokemonText, PokemonImage, PokemenTextStyle {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: titleStyle(),
            )),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokedexImage,
            width: 100.w,
            height: 100.w,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
