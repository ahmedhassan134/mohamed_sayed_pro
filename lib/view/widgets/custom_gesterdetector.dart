import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';

class CustomGesterDetector extends StatelessWidget {
const CustomGesterDetector({Key? key, required this.onTap,required this.text,required this.iconData}) : super(key: key);
 final Function()? onTap;
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,size: SizeConfig.defaultSize*2.2,),
        // SizedBox(width: SizeConfig.defaultSize*.01,),
        GestureDetector(
          onTap: onTap,
          child: Text(text,style:  TextStyle(color: Colors.white,fontSize: SizeConfig.defaultSize*2.2,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
