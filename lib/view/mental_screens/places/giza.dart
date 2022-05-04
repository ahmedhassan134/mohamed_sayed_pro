import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Giza extends StatelessWidget {
  const Giza ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الجيزة'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/giza.jpg', ),
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
                      text1: 'مركز املي ',
                      text2: '31 شارع المدينة المنورة ',
                      text3: '01113413792',
                      text4: 'البراجيل',
                    ),
                    CustomPlaces(
                      text1: 'مركز دريم لذوي الاحتياجات الخاصة ',
                      text2: '43 شارع المحولات ',
                      text3: '01009515674',
                      text4: 'الهرم',
                    ),
                    CustomPlaces(
                      text1: 'دار ملائكة الهرم ',
                      text2: '9 شارع المدينة حسن محمد ',
                      text3: '0235831440',
                      text4: 'فيصل',
                    ),
                    CustomPlaces(
                      text1: 'مركز تشالنج ',
                      text2: '7 ميدان محمد صالح – متفرع من شارع مصدق – بجوار البنك الاهلي المصري ',
                      text3: '01006084896',
                      text4: 'الدقي',
                    ),
                    CustomPlaces(
                      text1: 'مركز تنمية مهارات الطفل ',
                      text2: '24 شارع المدينة المنورة – وراق العرب ',
                      text3: '01279326762',
                      text4: 'الوراق',
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
