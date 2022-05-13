import 'package:flutter/material.dart';

class CustomGesterDetector extends StatelessWidget {
const CustomGesterDetector({Key? key, required this.onTap,required this.text,required this.iconData}) : super(key: key);
 final Function()? onTap;
  final String text;
  final IconData iconData;
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
