import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';


class  CustomGesterDetectorDrawer extends StatelessWidget {
  CustomGesterDetectorDrawer({Key? key, required this.onTap,required this.text,required this.iconData}) : super(key: key);
  Function()? onTap;
  String text;
  late IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize*.6),
      child: Row(

        children: [
          Expanded

            (child: Icon(iconData,size: SizeConfig.defaultSize* 4,),flex: 1,),
          SizedBox(width: SizeConfig.defaultSize* 2,),
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Text(text,style:  TextStyle(color: Colors.white,fontSize:SizeConfig.defaultSize* 3,fontWeight: FontWeight.bold),),
            ),flex: 3,
          ),
        ],
      ),
    );
  }
}