
import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';

class BainSuef extends StatelessWidget {
  const BainSuef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بني سويف '),
      ),
      body: Column(
        children: [
          const Stackk(
            img: 'assets/images/places/bns.jpg',
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsDirectional.only(    start: SizeConfig.defaultSize * 1,
                  end: SizeConfig.defaultSize * 1,
                  bottom: SizeConfig.defaultSize * 1,
                  top: SizeConfig.defaultSize * 4,),
                child: Column(
                  children: const [
                    CustomPlaces(
                      text1: 'مركز فكرة ',
                      text2: 'قصر الثقافة – أعلي فرع we',
                      text3: '01159022132',
                      text4: 'بني سويف ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الوان للتخاطب وارعاية النهارية ',
                      text2: 'ميدان المدرية – بجوار البنك الاهلي الجديد ',
                      text3: '01011167846',
                      text4: 'بني سويف',
                    ),
                    CustomPlaces(
                      text1: 'مركز ثقة لتدريب وتأهيل ذوي الاحتياجات الخاصة ',
                      text2: 'خلف مدرسة خاتم المرسلين – شارع مصطفي شلبي ',
                      text3: '01003512886',
                      text4: 'بني سويف',
                    ),
                    CustomPlaces(
                      text1: 'مركز بداية ',
                      text2: 'بجوار مدرسة الثانوية بنات القديمة – أمام معرض شباب مصر ',
                      text3: '01033894399',
                      text4: 'بني سويف ',
                    ),
                    CustomPlaces(
                      text1: 'جمعية اولادنا لذوي الاحتياجات الخاصة ',
                      text2: 'بياض العرب – بجوار مدرسة الأندلس ',
                      text3: '01124054940',
                      text4: 'شرق النيل ',
                    ),
                    CustomPlaces(
                      text1: 'مركز كيان ',
                      text2: 'بجوار حديقة الطفل – شارع محكمة الأسرة ',
                      text3: '01011113340',
                      text4: 'مركز الواسطي ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الحياة لرعاية وتأهيل ذوي الاحتياجات الخاصة والعاديين',
                      text2: 'اخر شتارع صيدلية د/ حمدي الكروري – أعلي عيادة د/ سمر خميس',
                      text3: '01206235866',
                      text4: 'مركز سمسطا ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الوان للتخاطب وارعاية النهارية',
                      text2: 'ميدان المدرسة بجوار البنك الأهلي – ناصر ',
                      text3: '01158021256',
                      text4: 'مركز ناصر ',
                    ),
                    CustomPlaces(
                      text1: 'مركز بصمة للرعاية والتأهيل ',
                      text2: 'الفشن – شارع سعد زغلول ',
                      text3: '01125014571',
                      text4: 'مركز الفشن ',
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
