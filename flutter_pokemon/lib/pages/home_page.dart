import 'package:flutter/material.dart';
import 'package:flutter_pokemon/widget/app_title.dart';
import 'package:flutter_pokemon/widget/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrientationBuilder(
      builder: ((context, orientation) => Column(
            children: const [
              AppTitle(),
              Expanded(child: PokemonList()),
            ],
          )),
    ));
  }
}
