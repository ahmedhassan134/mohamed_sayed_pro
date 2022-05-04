import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
class NonTextCircularAvatar extends StatelessWidget {
   NonTextCircularAvatar({Key? key,required this.margeStart,@required this.margeTop}) : super(key: key);
  double ? margeTop;
  double margeStart;
  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(start:SizeConfig.defaultSize* .4,top: SizeConfig.defaultSize* .8,end: SizeConfig.defaultSize* .2,bottom: SizeConfig.defaultSize* .2 ),

      margin: EdgeInsetsDirectional.only(start:margeStart,top: margeTop??SizeConfig.defaultSize* 0,end: SizeConfig.defaultSize* 1 ),
      width: SizeConfig.defaultSize* 7,
      height: SizeConfig.defaultSize* 7,
      decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle
      ),
      child: Center(
        child: TextFormField(
           cursorColor: Colors.green,
          style:  TextStyle(color: Colors.green,fontSize: SizeConfig.defaultSize* 3,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
          keyboardType: TextInputType.text,

          decoration: const InputDecoration(

            border: InputBorder.none,




          ),

        ),
      ),

    );
  }
}
