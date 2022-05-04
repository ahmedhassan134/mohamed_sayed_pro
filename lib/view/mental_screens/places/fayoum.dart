import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class  Fayoum extends StatelessWidget {
  const Fayoum ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الفيوم'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/fayoum.jpg', ),
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
                      text1: 'مركز إنسان ',
                      text2: 'باغوص – شارع عمر بن الخطاب – برج الرحمن ',
                      text3: '01027569694',
                      text4: 'مركز الفيوم ',
                    ),
                    CustomPlaces(
                      text1: 'مركز معاً للتخاطب وتنمية المهارات ',
                      text2: 'الفيوم – الحادقة نادي شباب ناصر الفيوم ',
                      text3: '01097606906',
                      text4: 'مركز الفيوم ',
                    ),
                    CustomPlaces(
                      text1: 'مركز الحسين للتخاطب وتاهيل الإعاقات ',
                      text2: 'الفيوم – الحادقة – ميدان الفنية – مجمع بدر الإسلامي – الدور الرابع أسفل مركز يقين للعيون ',
                      text3: '01007376249',
                      text4: 'مركز الفيوم ',
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
