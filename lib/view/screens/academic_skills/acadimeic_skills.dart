import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../widgets/custom_stack.dart';
class SkillsAcademic extends StatelessWidget {
static String id='skills_academic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مهارات اكاديميه '),
        centerTitle: true,
        elevation: 0,

      ),
        body: SingleChildScrollView(
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


                  SizedBox(height: 7,),
                  CustomStack(onTap: null, text:'عربي', img: 'assets/images/academic_skills/d2.jpg',
                    s1: 55,
                    s2: 10,
                    clr: Colors.white,

                  ),
                  CustomStack(onTap: null, text:'حساب', img: 'assets/images/academic_skills/d3.jpg',
                    s1: 55,
                    s2: 10,
                    clr: Colors.white,),
                  CustomStack(onTap: null, text:'اسئله تقويم', img: 'assets/images/academic_skills/d4.jfif',
                    s1: 30,
                    s2: 5,
                    clr: Colors.white,),
                ],
              ),
            ),
          ),

        )
    );
  }
}

