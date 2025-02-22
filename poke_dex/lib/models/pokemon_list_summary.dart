import 'package:dio/dio.dart';
import 'package:flutter_svg/svg.dart';

class PokemonListSummary {
  final String? name;
  final String? url;
  final SvgPicture? image;

  PokemonListSummary({
    required this.name,
    required this.url,
    required this.image,
  });

  static Future<PokemonListSummary> fromMap(Map<String, dynamic> map) async {
    var fullUrl = map["url"] as String?;

    var listUrl = fullUrl?.split("/");
    listUrl?.removeLast();
    var id = listUrl?.last;
    final dio = Dio();
    //TODO continue from here
    if (fullUrl != null) {
      var item = await dio.get(fullUrl);
      var teste = item.data["types"];
      var testes2 = teste;
    }

    return PokemonListSummary(
      name: map["name"] as String?,
      url: map["url"] as String?,
      image: SvgPicture.network(
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg",
        width: 24,
        height: 24,
      ),
    );
  }

  static Future<List<PokemonListSummary>> fromMapList(List<dynamic> map) async {
    var list = <PokemonListSummary>[];
    for (var item in map) {
      var pokemonSummury = await PokemonListSummary.fromMap(item);
      list.add(pokemonSummury);
    }
    return list;
  }
}
