import 'dart:convert';

import 'package:http/http.dart';
import '../model/pokemon_model.dart';

class PokemonService {
  Future<List<Pokemon>> fetchData() async {
    List<Pokemon> pokemons = [];
    try {
      Uri url = Uri.parse('https://db.pokemongohub.net/api/pokemon/with-generation/1');
      Response resp = await get(url);
      var data = jsonDecode(resp.body);
      pokemons = data.map<Pokemon>((e) => Pokemon.fromJson(e)).toList();
      return pokemons;
    } catch (e) {
      print('Error: $e');
      return pokemons;
    }
  }
}