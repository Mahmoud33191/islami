import 'package:flutter/material.dart';
import 'package:islami/screens/hadeeth/hadeeth_tab.dart';
import 'package:islami/screens/quran/quran_tab.dart';
import 'package:islami/screens/radio/radio_tab.dart';
import 'package:islami/screens/tasbeh/tasbeh_tab.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg3.png"),fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Islami",style: TextStyle(color: Colors.black),),
            centerTitle: true,
            elevation: 0,
          ),
          bottomNavigationBar:Theme(

            data: ThemeData(canvasColor: const Color(0xffb7935f)),
            child:BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap:(index){
                setState(() {selectedIndex=index;});
              } ,
              selectedItemColor: Colors.black,
              iconSize: 32,

              items: const [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label:"quran" ),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeeth.png")),label: "hadeeth"),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "sebha"),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label:"radio" ),
              ],

            ),
          ),
          body: tabs[selectedIndex]

      ),
    );
  }
  List<Widget>tabs=[
    QuranTab(),
    HadeethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}