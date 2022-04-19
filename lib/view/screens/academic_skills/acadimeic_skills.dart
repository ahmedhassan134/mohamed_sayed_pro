import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../service/responsive_service.dart';
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


                  SizedBox(height: SizeConfig.defaultSize),
                  CustomStack(
                    s1:  SizeConfig.defaultSize * 6,
                    s2:  SizeConfig.defaultSize * 2,
                    onTap: null, text:'عربي', img: 'assets/images/academic_skills/d2.jpg',

                    clr: Colors.white,

                  ),
                  CustomStack(
                    s1:  SizeConfig.defaultSize * 6,
                    s2:  SizeConfig.defaultSize * 2,
                    onTap: null, text:'حساب', img: 'assets/images/academic_skills/d3.jpg',

                    clr: Colors.white,),
                  CustomStack(onTap: null, text:'اسئله تقويم', img: 'assets/images/academic_skills/d4.jfif',

                    clr: Colors.white,
                    s1:  SizeConfig.defaultSize * 2,
                    s2:  SizeConfig.defaultSize * 2,
                  ),
                ],
              ),
            ),
          ),

        )
    );
  }
}

