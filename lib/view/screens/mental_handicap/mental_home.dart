import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/view/mental_screens/classifiction.dart';
import 'package:romio/view/mental_screens/identfiation.dart';
import 'package:romio/view/mental_screens/personalty.dart';
import 'package:romio/view/mental_screens/properties.dart';
import 'package:romio/view/mental_screens/reasons.dart';
import 'package:romio/view/widgets/custom_stack.dart';

import '../../../service/responsive_service.dart';
import '../../mental_screens/equilibrium_curve.dart';
import '../../mental_screens/places.dart';
class MentalHome extends StatelessWidget {
  const MentalHome({Key? key}) : super(key: key);
  static String id ='mentalhome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعاقه العقليه'),
        centerTitle: true,

      ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.deepPurpleAccent

                      ]
                  )
              ),

            ),
            SingleChildScrollView(
              child: AnimationLimiter(
                child: Column(
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1400),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: 200,
                      child: FadeInAnimation(
                        child: widget,
                      ),
                    ),
                    children:[


                      CustomStack(onTap: (){
                        Navigator.pushNamed(context, Identifiation.id);
                      }, text: 'التعريف', img:'assets/images/mental_retardation/a1.jpg',


                      ),

                      CustomStack(onTap:(){
                        Navigator.pushNamed(context, Reasons.id);

                      }, text: 'الاسباب', img:'assets/images/mental_retardation/a2.jpg'),

                      CustomStack( onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Pro();
                            }));
                      }, text: 'الخصائص', img:'assets/images/mental_retardation/a3.jpg'),

                      CustomStack( onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const Classification();
                            }));
                      }, text: 'الفئات', img:'assets/images/mental_retardation/a4.jpg'),

                      CustomStack(onTap: (){
                        Navigator.pushNamed(context, Personality.id);
                      }, text: 'التشخيص', img:'assets/images/mental_retardation/a5.jpg'),
                      CustomStack(onTap: (){
                        Navigator.pushNamed(context, EquilibriumCurve.id);
                      },
                          s1:  SizeConfig.defaultSize * 8,
                          s2: SizeConfig.defaultSize * 2,

                          text: 'المنحني الاعتدالي', img:'assets/images/mental_retardation/a6.jpg'),
                      CustomStack(onTap: (){
                        Navigator.pushNamed(context, Places.id);

                      }, text: 'اماكن تقديم الخدمه', img:'assets/images/mental_retardation/map.jpeg'),


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

