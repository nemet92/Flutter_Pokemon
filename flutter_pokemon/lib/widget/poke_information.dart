import 'package:flutter/material.dart';
import 'package:flutter_pokemon/constants/constants.dart';
import 'package:flutter_pokemon/constants/ui_helper.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget
    with getPokeInfoLabelTextStyle, getPokeInfoTextStyle {
  final PokemonModel pokemon;
  const PokeInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.w),
          ),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _builInformationRow("Name", pokemon.name),
            _builInformationRow("Heigth", pokemon.height),
            _builInformationRow("Weight", pokemon.weight),
            _builInformationRow("SpawnTime", pokemon.spawnTime),
            _builInformationRow("Weakness", pokemon.weaknesses),
            _builInformationRow("Pre Evolution", pokemon.prevEvolution),
            _builInformationRow("Next Evolution", pokemon.nextEvolution)
          ],
        ),
      ),
    );
  }

  _builInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: typePokeInfoLabelStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(" , "),
            style: typePoekInfoTextStyle(),
          )
        else if (value == null)
          const Text("Not available")
        else
          Text(value),
      ],
    );
  }
}
