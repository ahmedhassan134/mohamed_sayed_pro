import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
class TextCircualrAvatar extends StatelessWidget {
  const TextCircualrAvatar({Key? key,required this.margeStart,@required this.margeTop,required this.text}) : super(key: key);
  final double ? margeTop;
  final double margeStart;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start:SizeConfig.defaultSize* .4,top: SizeConfig.defaultSize* .8,end: SizeConfig.defaultSize* .2,bottom: SizeConfig.defaultSize* .2 ),

      margin: EdgeInsetsDirectional.only(start:margeStart,top: margeTop??SizeConfig.defaultSize* 0,end: SizeConfig.defaultSize* 1 ),
      width: SizeConfig.defaultSize* 7,
      height: SizeConfig.defaultSize* 7,
      decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle
      ),
      child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize:SizeConfig.defaultSize* 3,fontWeight: FontWeight.bold ),)),

    );
  }
}
