import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';

class PokeImageAndBall extends StatefulWidget {
  final PokemonModel pokemen;
  const PokeImageAndBall({super.key, required this.pokemen});

  @override
  State<PokeImageAndBall> createState() => _PokeImageAndBallState();
}

class _PokeImageAndBallState extends State<PokeImageAndBall>
    with getPokemonImage {
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
          child: CachedNetworkImage(
            imageUrl: widget.pokemen.img ?? "",
            width: UIHelper.calculatePokeImageAndBallSize(),
            height: UIHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: ((context, url, error) => const Icon(Icons.error)),
          ),
        )
      ],
    );
  }
}
