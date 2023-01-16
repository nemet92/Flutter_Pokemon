import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_pokemon/widget/poke_information.dart';
import 'package:flutter_pokemon/widget/poke_type_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget with getPokemonImage {
  final PokemonModel pokemon;
  DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UIHelper.getIconPadding(),
            child: IconButton(
              iconSize: 24.w,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          PokeNameType(pokemon: pokemon),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  pokedexImage,
                  fit: BoxFit.fitHeight,
                  height: 0.15.sh,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0.10.sh,
                child: PokeInformation(pokemon: pokemon),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CachedNetworkImage(
                  imageUrl: pokemon.img ?? "",
                  height: 0.25.sh,
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
