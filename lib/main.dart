import 'package:flutter/material.dart';
import 'package:islami/screens/hadeeth/hadeeth_detail.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/quran/sura_detail.dart';
import 'package:islami/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          ),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.black)
          )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName ,
      routes: {
        SplashScreen.routeName:(context) => const SplashScreen(),
        "home":(_)=> HomeScreen(),
        SuraDetiail.routName:(_)=>SuraDetiail(),
        HadeethDetiail.routName:(_)=>HadeethDetiail()
      },
    );
  }
}



