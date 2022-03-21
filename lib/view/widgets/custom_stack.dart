import 'package:flutter/material.dart';
class CustomStack extends StatelessWidget {
   CustomStack({required this.onTap,required this.text,required this.img,this.s1,this.s2,this.clr});

  Function()? onTap;
  String ? img;
  String ? text;
  double ? s1;
  double ? s2;
  Color ?clr;
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomLeft,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 89.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: Colors.green,
              image: DecorationImage(
                image: AssetImage(
                    img!),
                fit: BoxFit.fill,
              ),
              // shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: s1?? 50,
          bottom: s2?? 10,
          child: Text(
            text!,
            style:  TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              color: clr??Colors.black
            ),
          ),
        ),


      ],
    );
  }
}
