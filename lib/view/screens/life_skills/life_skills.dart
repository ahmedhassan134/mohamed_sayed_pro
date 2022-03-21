import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/view/widgets/custom_stack.dart';
class LifeSkills extends StatelessWidget {
  static String id='life_skills';

  @override
  Widget build(BuildContext context) {
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


                  SizedBox(height: 7,),
                  CustomStack(onTap: null, text:'تناول الطعام', img: 'assets/images/life_skills/c2.png',
                    s1: 15,
                    s2: 2,

                  ),
                  CustomStack(onTap: null, text:'دخول الحمام', img: 'assets/images/life_skills/c3.jpg',
                    s1: 35,
                    s2: 5,),
                  CustomStack(onTap: null, text:'ارتداء الملابس', img: 'assets/images/life_skills/c4.png',
                    s1: 35,
                    s2: 5,),
                ],
              ),
            ),
          ),

        )
    );
  }
}

