import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget with getPokemonImage {
  final PokemonModel pokemen;
  PokeImageAndBall({super.key, required this.pokemen});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokedexImage,
            width: UIHelper.calculatePokeImageAndBallSize(),
            height: UIHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemen.id!,
            child: CachedNetworkImage(
              imageUrl: pokemen.img ?? "",
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: ((context, url, error) => const Icon(Icons.error)),
            ),
          ),
        )
      ],
    );
  }
}
