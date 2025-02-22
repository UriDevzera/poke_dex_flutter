import 'package:poke_dex/models/pokemon_sumarry.dart';
import 'package:flutter/material.dart';

class PokeHomePage extends StatelessWidget {
  final List<PokemonSummary> pokemonList;

  const PokeHomePage({super.key, required this.pokemonList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (pokemonList.isEmpty) {
      //TODO EMBELEZAR ISSO AQUI
      return Text("Nenhum pokemon encontrado!");
    }
    return _buildListViewBuilder();
  }

  Widget _buildListViewBuilder() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          childAspectRatio: 8 / 8,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: pokemonList.length,
        itemBuilder: (BuildContext ctx, index) {
          return _buildCard(pokemonList[index]);
        },
      ),
    );
  }

  String capitalize(String value) {
    if (value.trim().isEmpty) return "";
    return "${value[0].toUpperCase()}${value.substring(1).toLowerCase()}";
  }

  Widget _buildCard(PokemonSummary pokemonSummury) {
    var listUrl = pokemonSummury.url?.split("/");
    listUrl?.removeLast();
    var id = listUrl?.last;
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //pokemonSummury.image ?? SizedBox(),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
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
