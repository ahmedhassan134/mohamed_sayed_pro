import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
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
    SizeConfig().init(context);
    return Stack(
      // alignment: Alignment.bottomLeft,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: SizeConfig.defaultSize * 13,
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
          right: s1??  SizeConfig.defaultSize * 4,
          bottom: s2?? SizeConfig.defaultSize * 2,
          child: Text(
            text!,
            style:  TextStyle(
                fontSize:3* SizeConfig.defaultSize,
                fontWeight: FontWeight.bold,
              color: clr??Colors.black
            ),
          ),
        ),


      ],
    );
  }
}
