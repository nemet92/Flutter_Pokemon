import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeballImageUrl = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topLeft, child: Text("Pokedex")),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            pokeballImageUrl,
            width: 100.w,
            height: 100.w,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}
