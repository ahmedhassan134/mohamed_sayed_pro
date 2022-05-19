import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
class CustomStack extends StatelessWidget {
   const CustomStack({Key? key, required this.onTap,required this.text,required this.img,this.s1,this.s2,this.clr}) : super(key: key);

  final Function()? onTap;
  final String ? img;
 final String ? text;
  final double ? s1;
  final double ? s2;
  final Color ?clr;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      // alignment: Alignment.bottomLeft,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *1.4,end: SizeConfig.defaultSize *2,start: SizeConfig.defaultSize *2,bottom: SizeConfig.defaultSize *1),
            height: SizeConfig.defaultSize * 13,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize *1.4,),
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
          child: FittedBox(
            child: Padding(
              padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.6,start:  SizeConfig.defaultSize *1) ,
              child: TextButton(
                onPressed: onTap,
                child: Text(

                  text!,
                  style:  TextStyle(

                      fontSize: SizeConfig.defaultSize *3,
                      fontWeight: FontWeight.bold,
                    color: clr??Colors.black
                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }
}
