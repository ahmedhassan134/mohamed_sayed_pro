import 'package:flutter/material.dart';
class Stackk extends StatelessWidget {
  Stackk({required this.img,required this.num1,required this.num2,required this.pos1,required this.pos2});
  final String img;
  final double num1;
  final double num2;
  final double pos1;
  final double pos2;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return   Stack(
      clipBehavior: Clip.none,
      children: [
        //CustomStack(onTap: null, text: 'النصائح والارشادات', img: 'assets/images/tips_and_advice/1.png'),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              )

          ),
        ),
        Positioned(
          top: pos1,
          left: pos2,
          child: Image.asset(img,
            height: num1,
            width: num2,
            fit: BoxFit.fill,

          ),
        ),

      ],
    );
  }
}
