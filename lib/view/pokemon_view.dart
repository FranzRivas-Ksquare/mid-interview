import 'package:flutter/material.dart';
import '../model/pokemon_model.dart';

class PokemonScreen extends StatelessWidget {
  Pokemon pokemon;
  PokemonScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${pokemon.name}')),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pokemon ID: ${pokemon.pokemonId!}'),
              const SizedBox(height: 5),
              Text('ID: ${pokemon.id!}'),
              const SizedBox(height: 10),
              Text('Generation: ${pokemon.generation!}'),
              const SizedBox(height: 10),
              if (pokemon.form != '') Text('form: ${pokemon.form!}'),
              const SizedBox(height: 5),
              StatsRow(
                text1: 'Type 1: ${pokemon.type1!}',
                text2: 'Type 2: ${pokemon.type2!}'),
              StatsRow(
                  text1: 'ATK: ${pokemon.atk!}',
                  text2: 'STA: ${pokemon.sta!}'),
              StatsRow(
                  text1: 'DEF: ${pokemon.def!}',
                  text2: 'MaxCP: ${pokemon.maxcp!}'),
            ],
          ),
        ),
      ),
    );
  }
}

class StatsRow extends StatelessWidget {
  String text1;
  String text2;

  StatsRow({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text1),
        Text(text2)
      ],
    );
  }
}