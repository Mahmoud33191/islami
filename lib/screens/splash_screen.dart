import 'dart:async';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  static const String routeName="splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () { Navigator.pushReplacementNamed(context, "home");});
    return Scaffold(
        body:  Image.asset(
          "assets/images/splash.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        )
    );
  }
}