import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class KafrElsheikh extends StatelessWidget {
  const KafrElsheikh ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('كفر الشيخ '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/kafr_elsheikh.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:EdgeInsetsDirectional.only(    start: SizeConfig.defaultSize * 1,
                  end: SizeConfig.defaultSize * 1,
                  bottom: SizeConfig.defaultSize * 1,
                  top: SizeConfig.defaultSize * 4,),
                child: Column(
                  children: const [
                    CustomPlaces(
                      text1: 'مركز خطوة لتأهيل ذوي الاحتياجات الخاصة ',
                      text2: 'دسوق – برج جولدن بلازا بجوار البنك الأهلي ',
                      text3: '01099828101',
                      text4: 'كفر الشيخ  ',
                    ),
                    CustomPlaces(
                      text1: 'مركز كيور للتخاطب وتنمية المهارات ',
                      text2: 'عمارات ال 47 عمارة رقم 15 الدور التاني أمام مركز شرابي – كفر الشيخ ',
                      text3: '01014972082',
                      text4: 'كفر الشيخ  ',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة إنسان الخيرية ',
                      text2: 'كفر الشيخ – تقسيم 2 – شلرع تونس المتفرع من شارع ',
                      text3: '0100609616',
                      text4: 'كفر الشيخ',
                    ),
                    CustomPlaces(
                      text1: 'مركز هيلب للتخاطب وتنمية مهارات الأطفال  ',
                      text2: 'كفر الشيخ – برج الخبراء – الدور التاني علوي – أعلي مركز شرابي للأطفال ',
                      text3: '01097959121',
                      text4: 'كفر الشيخ ',
                    ),


                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
