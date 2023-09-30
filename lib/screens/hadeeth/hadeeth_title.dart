import 'package:flutter/material.dart';
import 'package:islami/screens/hadeeth/hadeeth_detail.dart';
class HadeethTitle extends StatelessWidget {
  final String title;
  final int index;
  HadeethTitle(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            HadeethDetiail.routName,
            arguments: HadeethDetiailArgs(title, index)
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