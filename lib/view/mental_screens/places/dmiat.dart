import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Damiat extends StatelessWidget {
  const Damiat ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دمياط '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/dmiat.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
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
                      text1: 'مركز أنا استطيع ',
                      text2: 'النصر بجوار جامع بيصار ',
                      text3: '01096463133',
                      text4: 'دمياط',
                    ),
                    CustomPlaces(
                      text1: 'مركز رحمة لتدريب وتأهيل قدرات الطفل ذوي الاحتياجات الخاصة  ',
                      text2: 'السنانية خلف مدرسة شطا العربي ',
                      text3: '01011593355',
                      text4: 'دمياط',
                    ),
                    CustomPlaces(
                      text1: 'مركز إشراقة للتخاطب وتأهيل ذوي الاحتياجات الخاصة ',
                      text2: 'أمام مجمع التقوي – باب الحرس – خلف سور الجلدية ',
                      text3: '01006182136',
                      text4: 'دمياط',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة الفجر الجديد ',
                      text2: 'شارع السوق فارسكورد ',
                      text3: '01094076995',
                      text4: 'فارسكورد',
                    ),
                    CustomPlaces(
                      text1: 'مركز الصفوة ',
                      text2: 'فارسكورد ',
                      text3: '01060952849',
                      text4: 'فارسكورد',
                    ),
                    CustomPlaces(
                      text1: 'مركز إرادة ',
                      text2: 'كفر سعد ',
                      text3: '01024245737',
                      text4: 'كفر سعد ',
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
