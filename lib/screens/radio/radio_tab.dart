import 'package:flutter/material.dart';
class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),

        Text("اذاعة القران الكريم"),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[

              Icon(Icons.skip_previous,color: Color(0xffb7935f,),),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,color: Color(0xffb7935f),),
              SizedBox(width: 20,),
              Icon(Icons.skip_next,color: Color(0xffb7935f),)
            ]
        )
      ],

    );
  }
}