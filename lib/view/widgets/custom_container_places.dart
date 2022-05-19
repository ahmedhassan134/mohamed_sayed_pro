
import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
class CustomContainerPlaces extends StatelessWidget {
  const CustomContainerPlaces({Key? key,required this.text,required this.clr1,required this.clr2,required this.onTap}) : super(key: key);
  final String text;
  final Color clr1;
  final Color clr2;
  final Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize*1,start:SizeConfig.defaultSize*.7,end: SizeConfig.defaultSize*.7,bottom:SizeConfig.defaultSize*.4  ),
      child: GestureDetector(
        onTap:onTap ,
        child: Container(
          width: double.infinity,
          height: SizeConfig.defaultSize * 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize*1),
              boxShadow:  [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(SizeConfig.defaultSize*1,SizeConfig.defaultSize*1),
                    blurRadius: SizeConfig.defaultSize*1
                )
              ],
              gradient:  LinearGradient(
                  colors: [
                    const Color(0xff0063C0).withOpacity(.6),
                    const Color(0xff0063C0).withOpacity(.6),
                  ]
              )
          ),
          child: Center(
            child: FittedBox(
              child: Text
                (text,style: TextStyle(fontSize: SizeConfig.defaultSize*3,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),


        ),
      ),
    );
  }
}