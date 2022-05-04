import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Menia extends StatelessWidget {
  const Menia ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المنيا'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/minia.jpg', ),
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
                      text1: 'المركز المصري ',
                      text2: 'موقف ملوي الكبري العالي – بجوار مسجد العلم والإيمان – مركز المنيا ',
                      text3: '01101636358',
                      text4: 'المنيا',
                    ),
                    CustomPlaces(
                      text1: 'جمعية كيان للأطفال ذوي الإعاقة ',
                      text2: '6 ميدان شلبي – بجوار بنزينة التعاون – مركز المنيا  ',
                      text3: '01094426288',
                      text4: 'المنيا',
                    ),
                    CustomPlaces(
                      text1: 'حضانة ذوي الاحتياجات الخاصة  ',
                      text2: 'ملوي – منزل رقم 50 شارع الرحمه ',
                      text3: '01090914403',
                      text4: 'ملوي',
                    ),
                    CustomPlaces(
                      text1: 'مركز الحياة معاً لتأهيل ودمج ذوي الاحتياجات الخاصة ',
                      text2: 'دير البرشا – ملوي ',
                      text3: '01229142078',
                      text4: 'ملوي',
                    ),
                    CustomPlaces(
                      text1: 'مركز السراج لذوي الاحتياجات الخاصة ',
                      text2: 'خلف الادارة التعليمية – أبو قرقاص ',
                      text3: '',
                      text4: 'أبو قرقاص ',
                    ),
                    CustomPlaces(
                      text1: '',
                      text2: '',
                      text3: '',
                      text4: '',
                    ),
                    CustomPlaces(
                      text1: '',
                      text2: '',
                      text3: '',
                      text4: '',
                    ),
                    CustomPlaces(
                      text1: '',
                      text2: '',
                      text3: '',
                      text4: '',
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
