import 'package:flutter/material.dart';
class CustomColumnDrawer extends StatelessWidget {
  CustomColumnDrawer({required this.img, required this.text1,required this.text2});
  String img;
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.deepPurple,
          )
          //Image.asset(img,height: 80,width: 80,),

        ),
        const SizedBox(height: 5,),
        Column(
          children: [
            Text(text1 ,style: const TextStyle(fontWeight: FontWeight.bold),),
            Text(text2,style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}
