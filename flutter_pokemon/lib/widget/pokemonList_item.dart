import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_pokemon/pages/detail_page.dart';
import 'package:flutter_pokemon/widget/poke_img_and_ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(pokemon: widget.pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(widget.pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.pokemon.name ?? "N?A",
                style: titleNameStyle(),
              ),
              Chip(
                label: Text(widget.pokemon.type![0]),
                labelStyle: typeChipStyle(),
              ),
              Expanded(
                child: PokeImageAndBall(
                  pokemen: widget.pokemon,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
