import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/models/pokemon_list_model.dart';

class PokeHomePage extends StatelessWidget {
  const PokeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poke Home"),
      ),
      body: _buildBody(),
    );
  }

  Future<List<String>> _getPokemons() async {
    final dio = Dio();
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon');
    var model = PokemonListModel.fromMap(response.data);
    var listPokemon = ["Charmander", "Bubalsauro", "Mewtwo", "Picachu"];
    await Future.delayed(Duration(seconds: 4));
    return listPokemon;
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
          return ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(lista[index]),
                );
              });
        }
        return CircularProgressIndicator();
      },
    );
  }
}
