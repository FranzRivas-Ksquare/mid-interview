import 'package:flutter/material.dart';
import '../view/home.dart';
import '../view/pokemon_view.dart';
import '../model/pokemon_model.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  final name = settings.name;

  return MaterialPageRoute(builder: routes[name]!, settings: settings);
}

var routes = <String, WidgetBuilder> {
  '/': (ctx) => SafeArea(child: Home()),
  '/pokemon': (ctx) {
    final args = ModalRoute.of(ctx)!.settings.arguments as Map<String, dynamic>;
    return SafeArea(child: PokemonScreen(pokemon: args['pokemon'] as Pokemon,));
  }
};