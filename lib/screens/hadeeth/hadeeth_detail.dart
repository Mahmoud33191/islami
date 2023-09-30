import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/hadeeth/hadeeth_widgte.dart';
class HadeethDetiail extends StatefulWidget {
  static const routName="hadeeth_detial";

  @override
  State<HadeethDetiail> createState() => _HadeethDetiailState();
}

class _HadeethDetiailState extends State<HadeethDetiail> {
  @override
  Widget build(BuildContext context) {
    HadeethDetiailArgs args=ModalRoute.of(context)?.settings.arguments as HadeethDetiailArgs;
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
                return HadeethWidget(verses[index],index);
              },
              itemCount: verses.length,
            ),
          )
      ),
    );
  }

  List<String>verses=[];

  void loadFile(int index) async{
    String fileContent= await rootBundle.loadString("assets/folder/${index+1}.txt");
    verses= fileContent.split("\n");
    setState(() {});
  }
}
class HadeethDetiailArgs{
  String title;
  int index;
  HadeethDetiailArgs(this.title,this.index);
}