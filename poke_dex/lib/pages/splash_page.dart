import 'package:flutter/material.dart';
//import 'package:rive/rive.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.abc),
        // child: RiveAnimation.asset(
        //   "assets/rive/google_image.riv"
        // ),
      ),
    );
  }
}