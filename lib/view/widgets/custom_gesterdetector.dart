import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
class CustomGesterDetector extends StatelessWidget {
CustomGesterDetector({required this.onTap,required this.text,required this.iconData});
  Function()? onTap;
  String text;
  late IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,size: 35,),
        // SizedBox(width: SizeConfig.defaultSize*.01,),
        GestureDetector(
          onTap: onTap,
          child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
