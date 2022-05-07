import 'package:flutter/material.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/arabic/match.dart';

import '../../../../../service/responsive_service.dart';
import '../../../../widgets/custom_container.dart';
import '../../../../widgets/custom_stack.dart';
import '../arabic.dart';
class ArabicCalender extends StatelessWidget {
  const ArabicCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عربي'),
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
                      return const CalenderArabic();
                    }));

              }, 'قطار الحروف'),
              CustomContainer((){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const ArabicMatching();
                    }));

              }, 'التوصيل'),


            ],
          ),
        ],
      ),

    );
  }
}
