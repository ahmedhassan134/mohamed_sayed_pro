import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Aswan extends StatelessWidget {
  const Aswan ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اسوان'),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/aswan.jpg', ),
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
                      text1: 'مركز معاك لرعاية  ',
                      text2: 'شارع الكوبري – إدفو    ',
                      text3: '01145749339',
                      text4: 'إدفو',
                    ),
                    CustomPlaces(
                      text1: 'مركز حلم طفل ذوي الاحتياجات الخاصة ',
                      text2:'2 شارع الكهرباء – قرية فطيرة –  ',

                      text3: '01003675969',
                      text4: 'كوم امبو كوم',
                    ),
                    CustomPlaces(
                      text1: 'مركز الأمل ',
                      text2:'أسوان – ادفو – خلف المستشفي – أعلي عيادة د/ عبد الله الطوني        ',

                      text3: '01155575070',
                      text4: 'إدفو',
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
