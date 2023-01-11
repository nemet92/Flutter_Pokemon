import 'package:flutter/material.dart';
import 'package:flutter_pokemon/model/pokemon_model.dart';
import 'package:flutter_pokemon/services/pokedex_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    _pokemonListFuture = PokeApi.getPokemonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: no_leading_underscores_for_local_identifiers
          List<PokemonModel> _listem = snapshot.data!;
          return ListView.builder(
              itemCount: _listem.length,
              itemBuilder: (context, index) {
                var oankiPokemon = _listem[index];
                return ListTile(
                  title: Text(oankiPokemon.name.toString()),
                );
              });
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Hata Cikdi"),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}
