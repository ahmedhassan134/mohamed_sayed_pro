import 'package:flutter/material.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/mathes.dart';

import '../../../../../service/responsive_service.dart';
import '../../../../widgets/custom_container.dart';
import '../arabic/match.dart';
import 'math_match.dart';
class MathCalender extends StatelessWidget {
  const MathCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('الحساب'),
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
                      return const CalenderMath();
                    }));

              }, 'قطار الاعداد'),
              CustomContainer((){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const MathMatch();
                    }));

              }, 'التوصيل'),


            ],
          ),
        ],
      ),

    );
  }
}
