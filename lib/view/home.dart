import 'package:flutter/material.dart';
import '../controller/pokemon_controller.dart';
import '../model/pokemon_model.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: PokemonService().fetchData(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              List<Pokemon> pokemons = snapshot.data!;
              return ListView.builder(
                  itemCount: pokemons.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: double.infinity,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/pokemon', arguments: {
                            'pokemon': pokemons[index]
                          });
                        },
                        child: Text('${pokemons[index].name}'),
                      ),
                    );
                  }),
              );
            }
            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            }
            return const Center(child: CircularProgressIndicator());
          }),
        ),
      ),
    );
  }
}