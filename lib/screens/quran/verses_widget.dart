import 'package:flutter/material.dart';
class VersesWidget extends StatelessWidget {
  final String content;
  final int index;
  VersesWidget (this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        '$content{${index+1}}',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),),
    );
  }
}