import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/screens/life_skills/clothes_tako_off.dart';
import 'package:romio/view/screens/life_skills/clothes_two.dart';
import 'package:romio/view/screens/life_skills/colthes_wearing.dart';

import 'package:romio/view/widgets/custom_container.dart';

import 'mens.dart';
class Clothes extends StatelessWidget {
  const Clothes({Key? key}) : super(key: key);

  static String id='clothes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' الملابس'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/four.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: SizeConfig.defaultSize *2,),
              CustomContainer((){
                Navigator.pushNamed(context, ClothesTwo.id);
              }, 'الملابس'),
              CustomContainer((){
                Navigator.pushNamed(context,ClothesWearing.id  );
              }, 'ارتداء الملابس '),
              CustomContainer((){
                Navigator.pushNamed(context, ClothesTakeOff.id);
              }, 'خلع الملابس'),

            ],
          ),
        ],
      ),

    );
  }
}
