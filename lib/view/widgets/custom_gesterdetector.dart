import 'package:flutter/material.dart';

class CustomGesterDetector extends StatelessWidget {
CustomGesterDetector({Key? key, required this.onTap,required this.text,required this.iconData}) : super(key: key);
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
