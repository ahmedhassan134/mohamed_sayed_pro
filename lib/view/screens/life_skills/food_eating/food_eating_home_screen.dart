
import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/screens/life_skills/food_eating.dart';
import 'package:romio/view/screens/life_skills/food_eating/hand_washing.dart';
import 'package:romio/view/screens/life_skills/food_eating/sections.dart';

import 'package:romio/view/widgets/custom_container.dart';

class ClothesHomeScreen extends StatelessWidget {
  const ClothesHomeScreen({Key? key}) : super(key: key);

  static String id='clothestwo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' تناول الطعام'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [


          Column(
            children: [
              SizedBox(height: SizeConfig.defaultSize *2,),
              CustomContainer((){
                Navigator.pushNamed(context, Sections.id);

              }, 'الادوات'),
              CustomContainer((){
                Navigator.pushNamed(context, FoodEatingTwo.id);

              }, 'تناول الطعام'),
              CustomContainer((){
                Navigator.pushNamed(context, HandWashing.id);


              }, 'غسل الايدي'),


            ],
          ),
        ],
      ),

    );
  }
}
