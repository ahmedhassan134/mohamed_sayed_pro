import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';


class  CustomGesterDetectorDrawer extends StatelessWidget {
  CustomGesterDetectorDrawer({Key? key, required this.onTap,required this.text,required this.iconData}) : super(key: key);
  Function()? onTap;
  String text;
  late IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Expanded

          (child: Icon(iconData,size: 35,),flex: 1,),
        SizedBox(width: SizeConfig.defaultSize* 2,),
        Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          ),flex: 3,
        ),
      ],
    );
  }
}