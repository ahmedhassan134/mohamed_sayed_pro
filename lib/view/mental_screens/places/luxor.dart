import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Luxor extends StatelessWidget {
  const Luxor ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الأقصر'),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/luxor.jpg', ),
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
                      text1: 'مركز كلمة بالأقصر لذوي الاحتياجات الخاصة ',
                      text2: 'شارع المستشفي الدولي – أعلي مخبز الفيروز – أمام ماك للسجاد ',
                      text3: '01063403375',
                      text4: 'الأقصر',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة خطوة خطوة للتخاطب ',
                      text2: 'بجوار محطة الأقصر',
                      text3: '01093858112',
                      text4: 'الأقصر',
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
