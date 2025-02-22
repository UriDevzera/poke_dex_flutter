import 'package:poke_dex/models/pokemon_sumarry.dart';

class PokemonRequest {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonSummary> results;

  PokemonRequest({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  static PokemonRequest fromMap(Map<String, dynamic> map) {
    return PokemonRequest(
      count: map["count"] as int,
      next: map["next"] as String?,
      previous: map["previous"] as String?,
      results: PokemonSummary.fromMapList(map["results"]),
    );
  }
}
