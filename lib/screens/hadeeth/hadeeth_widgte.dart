import 'package:flutter/material.dart';
class HadeethWidget extends StatelessWidget {
  final String content;
  final int index;
  HadeethWidget (this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        content,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),),
    );
  }
}