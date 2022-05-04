import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Cairo extends StatelessWidget {
  const Cairo ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('القاهرة'),

      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/cairo.jpg', ),
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
                      text1: 'مركز إبداع الطفولة لذوي الهمم وتنمية المهارات ',
                      text2: 'فيلا 833 المجاورة الثالثة الحي الثاني – بجوار مدرسة أم المؤمنين – وشركة المياه القديمة ',
                      text3: '01120881507',
                      text4: '6 أكتوبر',
                    ),
                    CustomPlaces(
                      text1: 'مركز إسبشيل كير لذوي الاحتياجات الخاصة ',
                      text2: 'فيلا 97 منطقة الفيلات الحي السابع – 6 أكتوبر',
                      text3: '01227520984',
                      text4: '6 أكتوبر',
                    ),
                    CustomPlaces(
                      text1: 'مركز تخاطب ومهارات ',
                      text2: '5 ميدان سنفكس – أمام نادي الزماللك للالعاب الرياضية ',
                      text3: '01016594040',
                      text4: 'المهندسين ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الزهور البيضاء لذوي الاحتياجات الخاصة ',
                      text2: '20 شارع أحمد خلاف المهندسين ',
                      text3: '01064444643',
                      text4: 'المهندسين',
                    ),
                    CustomPlaces(
                      text1: 'الجمعية المصرية لتقدم الأشخاص ذوي الإعاقة ',
                      text2: 'شارع المشير أحمد إسماعيل – التجمع الخامس مصر الجديدة ',
                      text3: '01068809234',
                      text4: 'التجمع الخامس ',
                    ),
                    CustomPlaces(
                      text1: 'مركز عماد السعدني لتربية الخاصة ',
                      text2: '15 أبراج اغاخان – كورنيش النيل القاهرة',
                      text3: '01100091353',
                      text4: 'القاهرة',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة موف لرعاية أطفال الشلل الدماغي ',
                      text2: '23 شارع 232 دجلة المعادي ',
                      text3: '25212321',
                      text4: 'دجلة المعادي ',
                    ),
                    CustomPlaces(
                      text1: 'دار الفردوس للايتام المعاقين ',
                      text2: '15 شارع مصطفي النحاس الحي السادس – أعلي مطعم أبو مازن الشامية ',
                      text3: '01005396261',
                      text4: 'مدينة نصر ',
                    ),
                    CustomPlaces(
                      text1: 'مركز أطفالنا لذوي الاحتياجات الخاصة ',
                      text2: '35 شارع 77 – سرايات المعادي ',
                      text3: '01285814942',
                      text4: 'سرايات المعادي ',
                    ),
                    CustomPlaces(
                      text1: 'مدرسة السندس للايتام المعاقين ',
                      text2: '32 شارع ابن النفيس متفرع من شارع مكرم عبيد – أمام مسجد دار الارقم ',
                      text3: '01001148018',
                      text4: 'مدينة نصر ',
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
