import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Monofya extends StatelessWidget {
  const Monofya ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المنوفية'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/monofya.jpg', ),
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
                      text1: 'مؤسسة ابتسم ',
                      text2: 'شارع بورسعيد – أعلي عصافير الجنة سري البان ',
                      text3: '',
                      text4: 'المنوفية',
                    ),
                    CustomPlaces(
                      text1: 'مركز تخصصي لرعاية وتقويم الطفل ',
                      text2: 'طريق مصر الإسكندرية الصحراوي ',
                      text3: '01205071938',
                      text4: 'المنوفية',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة بهجة ',
                      text2: 'مدينة قويسنا أمام مدرسة بهجة يوسف رزق جمعية العروة الوثقي الدور الثاني ',
                      text3: '01000211129',
                      text4: 'قويسنا',
                    ),
                    CustomPlaces(
                      text1: 'مركز وجود ',
                      text2: 'شبين الكوم البر الشرقي – شارع سعد زغلول ',
                      text3: '01003246400',
                      text4: 'شبين الكوم ',
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
