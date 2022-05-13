import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Suez extends StatelessWidget {
  const Suez ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السويس'),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/seuz.jpg', ),
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
                      text1: 'مركز الريان للتأهيل ',
                      text2: 'السويس – كفر أحمد عبده الجديد – العبور – بجوار صيدلية د/ محمد بدوي – أعلي مسجد الريان ',
                      text3: '0112817508',
                      text4: ' كفر أحمد عبده ',
                    ),
                    CustomPlaces(
                      text1: 'جمعية الصفاء لرعاية الأطفال ذوي الاحتياجات الخاصة ',
                      text2: 'حي عتاقة الجديد – مدينة الكوثر – السويس ',
                      text3: '01063001110',
                      text4: 'الكوثر',
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
