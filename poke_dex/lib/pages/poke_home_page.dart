import 'package:poke_dex/models/pokemon_list_model.dart';
import 'package:poke_dex/models/pokemon_list_summary.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PokeHomePage extends StatelessWidget {
  const PokeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon List"),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Future<List<PokemonListSummary>> _getPokemons() async {
    final dio = Dio();
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon');
    var model = await PokemonRequest.fromMap(response.data);
    return model.results;
  }

  Widget _buildBody() {
    return FutureBuilder(
      future: _getPokemons(),
      builder: (context, reponse) {
        if (reponse.connectionState == ConnectionState.done) {
          var lista = reponse.data;
          if (lista == null || lista.isEmpty) {
            return Text("Nenhum pokemon encontrado!");
          }
          return _buildListViewBuilder(lista);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildListViewBuilder(List<PokemonListSummary> lista) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: lista.length,
        itemBuilder: (BuildContext ctx, index) {
          return _buildCard(lista[index]);
        },
      ),
    );
  }

  String capitalize(String value) {
    if (value.trim().isEmpty) return "";
    return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
  }

  Widget _buildCard(PokemonListSummary pokemonSummury) {
    var listUrl = pokemonSummury.url?.split("/");
    listUrl?.removeLast();
    var id = listUrl?.last;
    return Card(
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pokemonSummury.image ?? SizedBox(),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      capitalize(pokemonSummury.name ?? ""),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
