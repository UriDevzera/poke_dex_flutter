import 'package:flutter/material.dart';
import 'package:poke_dex/pages/splash_page.dart';
import 'package:poke_dex/theme/theme.dart';
import 'package:poke_dex/theme/util.dart';

class PokeDexApp extends StatelessWidget {
  const PokeDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme =
        createTextTheme(context, "Balthazar", "Baloo Tamma 2");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'PokeDex',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const SplashPage(),
    );
  }
}
