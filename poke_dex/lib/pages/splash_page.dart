import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
  ValueNotifier<int> itensLoaded = ValueNotifier(0);
  var totalItens = 0;

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

    navigateToHome(pokemonSummaryList);
  }

  Future<void> _loadFullPokemonSummary(
      List<PokemonSummary> pokemonSummaryList) async {
    final dio = Dio();
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon');

    var model = PokemonRequest.fromMap(response.data);

    totalItens = model.count;
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
  }

  void setNotifier(int quantidadeDownlodado) {
    itensLoaded.value = quantidadeDownlodado;
  }

  void navigateToHome(List<PokemonSummary> pokemonList) {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (context) => PokeHomePage(pokemonList: pokemonList),
    //   ),
    // );
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
            ValueListenableBuilder<int>(
              valueListenable: itensLoaded,
              builder: (context, value, child) {
                if (value == 0 && totalItens == 0) {
                  return detailText("Acessando areas de caça...");
                }
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        value: value / totalItens,
                      ),
                      detailText("Procurando pokemons $value de $totalItens"),
                    ],
                  ),
                );
                //return
              },
            ),
          ],
        ),
      ),
    );
  }

  Text detailText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
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
