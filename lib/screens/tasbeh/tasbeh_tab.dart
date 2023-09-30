import 'package:flutter/material.dart';
class TasbehTab extends StatefulWidget {
   TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
int counter=0;
List<String>tasbeh=[
  "سبحان الله",
  "الحمد لله",
  "الله اكبر"
];
int currentIndex=0;
double angle=0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const SizedBox(height: 30,),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height*0.09),
                  child: Transform.rotate(
                      angle:angle,
                      child: Theme(
                        data: ThemeData(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent
                        ),
                        child: InkWell(
                          onTap: (){
                            clickOnImage();
                            setState(() {});
                          },
                          child: Image.asset(
                              "assets/images/sebha_image.png",
                              height: size.height*0.20),
                        ),
                      )
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: size.height*0.05),
                  child: Image.asset("assets/images/head_sebha.png",height: size.height*0.10)
              )
              ,
            ],
          ),
          SizedBox(height: 30,),
          Text(
              "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text(
              "$counter",
            textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text(
              tasbeh[currentIndex],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
  void clickOnImage(){
    angle+=3;
    if(counter==30){
      counter=0;
      currentIndex++;
      if(currentIndex>2){
        currentIndex=0;
      }
    }
    counter++;
    setState(() {});
  }
}