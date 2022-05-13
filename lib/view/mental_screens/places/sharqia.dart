import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Sharqia extends StatelessWidget {
  const Sharqia ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الشرقية'),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/sharqia.jpg', ),
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
                      text1: ''' مركز أسباير لتنمية المهارات 
 بنظم الرعاية الصباحية والمسائية (ً متلازمة داون – التاخر اللغوي – اضطراب التوحد – صعوبات التعلم – التاخر النمائي – الضعف السمعي – فرط الحركة وتشتت الانتباه )  
                  ''',
                      text2: 'شارع الرحمن اخر شارع مركز الدكتورة يسرية الطويل – أمام سوبر ماركت اشرقت بجوار مفروشات الصاوي متفرع من شارع القومية مدخل اورينتال ',
                      text3: '01030893927',
                      text4: 'الزقازيق',
                    ),
                    CustomPlaces(
                      text1: 'مركز الخطوة الاولي يقدم (تأهيل ورعاية – علاج وظيفي – تكامل حسي – اختبارات ذكاء ) ',
                      text2: 'الزقازيق – المنصورة  , بناويس ',
                      text3: '01066135272',
                      text4: 'الزقازيق',
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