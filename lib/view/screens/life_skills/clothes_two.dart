import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/screens/life_skills/women.dart';
import 'package:romio/view/widgets/custom_container.dart';

import 'mens.dart';
class ClothesTwo extends StatelessWidget {
  const ClothesTwo({Key? key}) : super(key: key);

  static String id='clothestwoo';
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
                Navigator.pushNamed(context, Mens.id);
              }, 'رجالي'),
              CustomContainer((){
                Navigator.pushNamed(context,Women.id  );
              }, 'نسائي '),


            ],
          ),
        ],
      ),

    );
  }
}
