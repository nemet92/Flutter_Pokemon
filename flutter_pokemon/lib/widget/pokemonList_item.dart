import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonListItem extends StatefulWidget {
  PokemonModel pokemon;
  PokemonListItem({super.key, required this.pokemon});

  @override
  State<PokemonListItem> createState() => _PokemonListItemState();
}

class _PokemonListItemState extends State<PokemonListItem>
    with getPokemenNameTextStyle, getPokemenChipTextStyle {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(
        children: [
          Text(
            widget.pokemon.name ?? "N?A",
            style: titleNameStyle(),
          ),
          Chip(
            label: Text(widget.pokemon.type![0]),
            labelStyle: typeChipStyle(),
          )
        ],
      ),
    );
  }
}
