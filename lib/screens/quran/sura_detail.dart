import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/quran/verses_widget.dart';
class SuraDetiail extends StatefulWidget {
  static const routName="sura-detail";

  @override
  State<SuraDetiail> createState() => _SuraDetiailState();
}

class _SuraDetiailState extends State<SuraDetiail> {
  @override
  Widget build(BuildContext context) {
    SuraDetiailArgs args=ModalRoute.of(context)?.settings.arguments as SuraDetiailArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"),
              fit: BoxFit.fill
          )
      ),

      child: Scaffold(
          appBar:AppBar(
            title: Text(args.title,style: TextStyle(color: Colors.black),),
            centerTitle: true,
            elevation: 0,
          ),
          body: verses.isEmpty?
          Center(child: CircularProgressIndicator(),)
              :Card(
            color: Colors.white,
                elevation: 18,
                margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)
                ),
                child: ListView.builder(
            itemBuilder: (context,index){
                return VersesWidget(verses[index],index);
            },
            itemCount: verses.length,
          ),
              )
      ),
    );
  }

  List<String>verses=[];

  void loadFile(int index) async{
    String fileContent= await rootBundle.loadString("assets/files/${index+1}.txt");
    verses= fileContent.split("\n");
    setState(() {});
  }
}
class SuraDetiailArgs{
  String title;
  int index;
  SuraDetiailArgs(this.title,this.index);
}