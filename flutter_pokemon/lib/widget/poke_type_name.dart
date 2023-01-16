import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatefulWidget {
  final PokemonModel pokemon;
  const PokeNameType({super.key, required this.pokemon});

  @override
  State<PokeNameType> createState() => _PokeNameTypeState();
}

class _PokeNameTypeState extends State<PokeNameType>
    with getPokemenNameTextStyle, getPokemenChipTextStyle {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.pokemon.name ?? "",
                  style: titleNameStyle(),
                ),
              ),
              Text(
                "#${widget.pokemon.num}",
                style: titleNameStyle(),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
              label: Text(
            widget.pokemon.type?.join(" , ") ?? "",
            style: typeChipStyle(),
          ))
        ],
      ),
    );
  }
}
