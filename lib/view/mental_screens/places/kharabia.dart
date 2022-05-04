import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Kharbia extends StatelessWidget {
  const Kharbia({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الغربية'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/kharbia.jpg', ),
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
                      text1: 'مركز ايد واحدة لذوي الاحتياجات الخاصة ',
                      text2: 'شارع سعد زغلول – مركز سمنود ',
                      text3: '01228389370',
                      text4: 'سمنود',
                    ),
                    CustomPlaces(
                      text1: 'مركز الحياة لذوي الاحتياجات الخاصة ',
                      text2: 'مركز السنطة – الغربية ',
                      text3: '',
                      text4: 'السنطة ',
                    ),
                    CustomPlaces(
                      text1: 'Center smile ‎ لتأهيل ذوي الاحتياجات الخاصة ',
                      text2: 'طنطا',
                      text3: '0403300339',
                      text4: 'طنطا',
                    ),
                    CustomPlaces(
                      text1: 'مركز الرجاء للفئات الخاصة ',
                      text2: '6 شارع جمال عبد الناصر من شارع ابن الفارض ',
                      text3: '01554474209',
                      text4: 'طنطا',
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
