import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/view/screens/academic_skills/arabic.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/calendar_questions.dart';
import 'package:romio/view/screens/academic_skills/math.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_stack.dart';
class SkillsAcademic extends StatelessWidget {
static String id='skills_academic';

  const SkillsAcademic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مهارات اكاديميه '),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pinkAccent,

      ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/five.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 500),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 200,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children:[


                      SizedBox(height: SizeConfig.defaultSize),
                      CustomStack(
                        s1:  SizeConfig.defaultSize * 6,
                        s2:  SizeConfig.defaultSize * 2,
                        onTap:(){
                          Navigator.pushNamed(context, Arabic.id);
                        }, text:'عربي', img: 'assets/images/academic_skills/d2.jpg',

                        clr: Colors.white,

                      ),
                      CustomStack(
                        s1:  SizeConfig.defaultSize * 6,
                        s2:  SizeConfig.defaultSize * 2,
                        onTap: (){
                          Navigator.pushNamed(context, Math.id);

                        }, text:'حساب', img: 'assets/images/academic_skills/d3.jpg',

                        clr: Colors.white,),
                      CustomStack(onTap: (){
                        Navigator.pushNamed(context, CalenderQuestion.id);

                      }, text:'اسئله تقويم', img: 'assets/images/academic_skills/d4.jfif',

                        clr: Colors.white,
                        s1:  SizeConfig.defaultSize * 2,
                        s2:  SizeConfig.defaultSize * 2,
                      ),
                    ],
                  ),
                ),
              ),

            ),
          ],
        )
    );
  }
}

