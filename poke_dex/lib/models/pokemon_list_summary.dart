class PokemonListSummary{
  final String? name;
  final String? url;

  PokemonListSummary({
    required this.name,
    required this.url,
  });

  factory PokemonListSummary.fromMap(Map<String, dynamic> map) {
    return PokemonListSummary(
      name: map["name"] as String?,
      url: map["url"] as String?,
    );
  }

  static List<PokemonListSummary> fromMapList(List<Map<String, dynamic>> map){
    return map.map((e) => PokemonListSummary.fromMap(e)).toList();
  }
}