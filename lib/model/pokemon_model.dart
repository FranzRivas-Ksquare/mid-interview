class Pokemon {
  int? id;
  String? pokemonId;
  String? name;
  dynamic form;
  String? type1;
  String? type2;
  int? generation;
  int? atk;
  int? sta;
  int? def;
  int? maxcp;

  Pokemon({
    this.id,
    this.pokemonId,
    this.name,
    this.form,
    this.type1,
    this.type2,
    this.generation,
    this.atk,
    this.sta,
    this.def,
    this.maxcp});

  Pokemon.fromJson(Map<String, dynamic> json){
    id = json['id'] ?? 0;
    pokemonId = json['pokemonId'] ?? '';
    name = json['name'] ?? '';
    form = json['form'] ?? '';
    type1 = json['type1'] ?? '';
    type2 = json['type2'] ?? '';
    generation = json['generation'] ?? 0;
    atk = json['atk'] ?? 0;
    sta = json['sta'] ?? 0;
    def = json['def'] ?? 0;
    maxcp = json['maxcp'] ?? 0;
  }

}