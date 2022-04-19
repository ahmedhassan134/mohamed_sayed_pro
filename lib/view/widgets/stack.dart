import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
class Stackk extends StatelessWidget {
  Stackk({required this.img,this.num1, this.num2, this.pos1,this.pos2});
  final String img;
  double?  num1;
   double? num2;
  double ?pos1;
   double ?pos2;

  @override
  Widget build(BuildContext context) {

    return   Stack(
      clipBehavior: Clip.none,
      children: [
        //CustomStack(onTap: null, text: 'النصائح والارشادات', img: 'assets/images/tips_and_advice/1.png'),
        Container(
          margin: const EdgeInsetsDirectional.only(bottom: 20),

          width: double.infinity,
          height: MediaQuery.of(context).size.height * .25,
          decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              )

          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize *5 ,
          left: SizeConfig.defaultSize *3,
          right: SizeConfig.defaultSize *4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(img,
              height: SizeConfig.defaultSize *20,
              width: MediaQuery.of(context).size.width *.75,
              fit: BoxFit.fill,

            ),
          ),
        ),

      ],
    );
  }
}
