import 'package:poke_dex/models/pokemon_list_summary.dart';

class PokemonRequest {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonListSummary> results;

  PokemonRequest({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  static Future<PokemonRequest> fromMap(Map<String, dynamic> map) async {
    return PokemonRequest(
      count: map["count"] as int,
      next: map["next"] as String,
      previous: map["previous"] as String?,
      results: await PokemonListSummary.fromMapList(map["results"]),
    );
  }
}
