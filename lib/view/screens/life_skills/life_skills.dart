import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/view/widgets/custom_stack.dart';

import '../../../service/responsive_service.dart';
class LifeSkills extends StatelessWidget {
  static String id='life_skills';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('مهارات حياتيه'),
        centerTitle: true,
        elevation: 0,

      ),
        body: SingleChildScrollView(
          child: AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 700),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: 200,
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children:[


                  SizedBox(height: SizeConfig.defaultSize),
                  CustomStack(onTap: null, text:'تناول الطعام', img: 'assets/images/life_skills/c2.png',
                    s1:  SizeConfig.defaultSize * 3,
                    s2:  SizeConfig.defaultSize * 1,

                  ),
                  CustomStack(onTap: null, text:'دخول الحمام', img: 'assets/images/life_skills/c3.jpg',

                    ),
                  CustomStack(onTap: null, text:'ارتداء الملابس', img: 'assets/images/life_skills/c4.png',

                    ),
                ],
              ),
            ),
          ),

        )
    );
  }
}

