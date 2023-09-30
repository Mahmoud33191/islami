import 'package:flutter/material.dart';
import 'package:islami/screens/hadeeth/hadeeth_title.dart';

class HadeethTab extends StatelessWidget {
  final List<String>hadeethName=[
    "حديث رقم1","حديث رقم2","حديث رقم3","حديث رقم4","حديث رقم5","حديث رقم6",
    "حديث رقم7","حديث رقم8","حديث رقم9","حديث رقم10","حديث رقم11","حديث رقم12","حديث رقم13",
    "حديث رقم14","حديث رقم15","حديث رقم16","حديث رقم17","حديث رقم18","حديث رقم19","حديث رقم20","حديث رقم21",
    "حديث رقم22","حديث رقم23","حديث رقم24","حديث رقم25","حديث رقم26","حديث رقم27","حديث رقم28","حديث رقم29",
    "حديث رقم30","حديث رقم31","حديث رقم32","حديث رقم33","حديث رقم34","حديث رقم35","حديث رقم36",
    "حديث رقم37","حديث رقم38","حديث رقم39","حديث رقم40","حديث رقم41",
    "حديث رقم42","حديث رقم43","حديث رقم44","حديث رقم45","حديث رقم46","حديث رقم47",
    "حديث رقم48","حديث رقم49","حديث رقم50"
  ];

  HadeethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1,child: Image.asset("assets/images/hadeeth_title.png")),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (context,index){
                return HadeethTitle(hadeethName[index],index);
              },
              separatorBuilder: (context,index)=>
                  Container(
                    color: Color(0xffb7935f),
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ) ,
              itemCount: hadeethName.length
          ),
        )
      ],
    );
  }
}