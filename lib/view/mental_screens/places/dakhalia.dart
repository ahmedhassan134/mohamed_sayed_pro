import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Dakhalia extends StatelessWidget {
  const Dakhalia ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الدقهلية '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/dakhlia.jpg', ),
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
                      text1: 'سمادو',
                      text2: 'السنبلاوين – أرض المحلج – أمام قصر الثقافة',
                      text3: '01019350074',
                      text4: 'السنبلاوين',
                    ),
                    CustomPlaces(
                      text1: 'مركز إبني إبنك ',
                      text2: 'شيرين دنجواي ',
                      text3: '01015133845',
                      text4: 'دنجواي',
                    ),
                    CustomPlaces(
                      text1: 'مركز أجيال ',
                      text2: 'دكرنس المنصورة ',
                      text3: '01004186908',
                      text4: 'دكرنس المنصورة ',
                    ),
                    CustomPlaces(
                      text1: 'مركز التخاطب الشامل ',
                      text2: 'شها خلف المدرسة الثانوي العام ',
                      text3: '01147626979',
                      text4: 'شها',
                    ),
                    CustomPlaces(
                      text1: 'مركز معاً',
                      text2: 'ميت غمر – شارع الجيش بجوار السجل المدني القديم ',
                      text3: '01210042265',
                      text4: 'ميت غمر',
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
