import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Ismailia extends StatelessWidget {
  const Ismailia ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإسماعلية '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/ismailia.jpg', ),
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
                      text1: 'مؤسسة إشراقة أمل للتخاطب وتأهيل أطفالنا ذو القدرات الخاصة إستقبال حالات ( تأخر النمو اللغوي ‏‏– الخنف – ‏اللدغات – ‏اضطراب التوحد ‏‏– متلازمة داون ‏‏– الشلل الداغي ) ',
                      text2: 'الإسماعيلية – أرض الجمعيات السابقة ',
                      text3: '01287628434',
                      text4: 'أرض الجمعيات السابقة ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الإسماعلية للتخاطب ',
                      text2: 'الإسماعلية – أبو صوير – شارع المطار أعلي سوبر ماركت عبد الستار ',
                      text3: '01007032850',
                      text4: 'الإسماعلية',
                    ),
                    CustomPlaces(
                      text1: 'مركز الشاطر للتعليم المبكر يقبل الحالات من عام – 15 عاماً ويشمل الحالات ( أطفال داون – اضطراب التوحد – تأخر الكلام )  ',
                      text2: 'الإسماعيلية – شارع عرابي 2 – أمام مسرح نقابة المحامين ',
                      text3: '01126000201',
                      text4: 'الإسماعلية',
                    ),
                    CustomPlaces(
                      text1: 'مركز كيان للتأهيل  يوجد نظام استضافة اليوم الواحد رعاية نهارية وجلسات مسائية ',
                      text2: 'الإسماعلية – أمام معمل افسماعلية للتحاليل ',
                      text3: '01222559196',
                      text4: 'الإسماعلية',
                    ),
                    CustomPlaces(
                      text1: 'مركز دره الرحمن للتخاطب وذوي الاحتياجات الخاصة تحت إشراف دكتور / مرفت بيومي ',
                      text2: 'الإسماعلية – أول حي الزهور – بجوار نقابة النقل البري ',
                      text3: '01280300054',
                      text4: 'حي الزهور ',
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
