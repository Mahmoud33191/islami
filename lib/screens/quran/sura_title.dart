import 'package:flutter/material.dart';
import 'package:islami/screens/quran/sura_detail.dart';
class SuraTitle extends StatelessWidget {
  final String title;
  final int index;
  SuraTitle(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            SuraDetiail.routName,
            arguments: SuraDetiailArgs(title, index)
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 25),),
      ),
    );
  }
}