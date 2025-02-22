class PokemonSummary {
  final String? name;
  final String? url;

  PokemonSummary({
    required this.name,
    required this.url,
  });

  static PokemonSummary fromMap(Map<String, dynamic> map) {
    return PokemonSummary(
      name: map["name"] as String?,
      url: map["url"] as String?,
    );
  }

  static List<PokemonSummary> fromMapList(List<dynamic> map) {
    var list = <PokemonSummary>[];
    for (var item in map) {
      var pokemonSummury = PokemonSummary.fromMap(item);
      list.add(pokemonSummury);
    }
    return list;
  }
}
