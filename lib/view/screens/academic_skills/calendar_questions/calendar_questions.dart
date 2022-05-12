import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/mathes.dart';

import 'package:romio/view/screens/academic_skills/calendar_questions/mathes/math_calender.dart';
import 'package:romio/view/screens/academic_skills/math.dart';

import 'package:romio/view/widgets/custom_container.dart';

import 'arabic/calender_arabic.dart';


class CalenderQuestion extends StatelessWidget {
  const CalenderQuestion ({Key? key}) : super(key: key);

  static String id='CalenderQuestion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' اسئله تقويم'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/five.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: SizeConfig.defaultSize *2,),
              CustomContainer((){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ArabicCalender();
                    }));

              }, 'عربي'),
              CustomContainer((){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return  const MathCalender();
                    }));

              }, 'حساب'),


            ],
          ),
        ],
      ),

    );
  }
}
