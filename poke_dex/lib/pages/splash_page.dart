import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/models/pokemon.dart';
import 'package:poke_dex/models/pokemon_request.dart';
import 'package:poke_dex/models/pokemon_sumarry.dart';
import 'package:poke_dex/pages/poke_home_page.dart';
import 'package:rive/rive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  ValueNotifier<int> pokemonSummaryLoaded = ValueNotifier(0);
  var totalPokemonsParaCarregar = 0;
  var quantidadePokemonDownloading = 0;
  ValueNotifier<String> pokemonName = ValueNotifier("");

  var _isLoadingSummary = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _downloadData();
    });
    super.initState();
  }

  Future<void> _downloadData() async {
    await Future.delayed(const Duration(seconds: 2));

    List<PokemonSummary> pokemonSummaryList = [];

    await _loadFullPokemonSummary(pokemonSummaryList);
    var pokemonList = await _loadListOfPokemonData(pokemonSummaryList);

    navigateToHome(pokemonList);
  }

  Future<List<Pokemon>> _loadListOfPokemonData(
      List<PokemonSummary> pokemonSummaryList) async {
    var listOfPokemon = <Pokemon>[];
    for (var pokemonSummary in pokemonSummaryList) {
      final dio = Dio();
      final response = await dio.get(pokemonSummary.url!);

      var pokemon = Pokemon.fromMap(response.data);
      listOfPokemon.add(pokemon);
      pokemonName.value = pokemon.name;
    }
    return listOfPokemon;
  }

  Future<void> _loadFullPokemonSummary(
      List<PokemonSummary> pokemonSummaryList) async {
    final dio = Dio();
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon');

    var model = PokemonRequest.fromMap(response.data);

    await Future.delayed(Duration(seconds: 2));

    totalPokemonsParaCarregar = model.count;
    pokemonSummaryList.addAll(model.results);

    setNotifier(pokemonSummaryList.length);

    var nextUrl = model.next;
    while (nextUrl != null) {
      final response = await dio.get(nextUrl);
      model = PokemonRequest.fromMap(response.data);
      pokemonSummaryList.addAll(model.results);
      nextUrl = model.next;
      setNotifier(pokemonSummaryList.length);
    }

    setState(() {
      _isLoadingSummary = false;
    });
  }

  void setNotifier(int quantidadeDownlodado) {
    pokemonSummaryLoaded.value = quantidadeDownlodado;
  }

  void navigateToHome(List<Pokemon> pokemonList) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => PokeHomePage(pokemonList: pokemonList),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRiveAnimation(),
            _isLoadingSummary
                ? _buildAnimationLoadingPokemonSummary()
                : _buildAnimationLoadingPokemon()
          ],
        ),
      ),
    );
  }

  ValueListenableBuilder<int> _buildAnimationLoadingPokemonSummary() {
    return ValueListenableBuilder<int>(
      valueListenable: pokemonSummaryLoaded,
      builder: (context, value, child) {
        if (value == 0 && totalPokemonsParaCarregar == 0) {
          return detailText("Acessando areas de caça...");
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child: Column(
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: value / totalPokemonsParaCarregar,
              ),
              detailText(
                  "Procurando pokemons $value de $totalPokemonsParaCarregar"),
            ],
          ),
        );
        //return
      },
    );
  }

  ValueListenableBuilder<String> _buildAnimationLoadingPokemon() {
    return ValueListenableBuilder<String>(
      valueListenable: pokemonName,
      builder: (context, value, child) {
        quantidadePokemonDownloading++;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child: Column(
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                value: quantidadePokemonDownloading / totalPokemonsParaCarregar,
              ),
              detailText("Pegando pokemon ${_capitalize(value)}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  detailText(
                    "Pegando $quantidadePokemonDownloading/$totalPokemonsParaCarregar",
                    fontSizeVersion: 2,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String _capitalize(String value) {
    return value.isEmpty
        ? ""
        : "${value[0].toUpperCase()}${value.substring(1)}";
  }

  Text detailText(String text, {int fontSizeVersion = 1}) {
    double? fontSize = Theme.of(context).textTheme.headlineSmall?.fontSize;

    if (fontSizeVersion == 2) {
      fontSize = Theme.of(context).textTheme.bodyLarge?.fontSize;
    }

    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: fontSize,
      ),
    );
  }

  SizedBox _buildRiveAnimation() {
    return SizedBox(
      width: 200,
      height: 200,
      child: RiveAnimation.asset(
        "assets/rive/poke_loading.riv",
      ),
    );
  }
}
