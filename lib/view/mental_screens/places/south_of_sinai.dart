import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class SouthOfSinai extends StatelessWidget {
  const SouthOfSinai ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جنوب سيناء '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/sinai.jpg', ),
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
                      text1: 'مركز تدريب ذوي الاحتياجات الخاصة ',
                      text2: 'حي الزهور – الطور – جنوب سيناء ',
                      text3: '0693777297',
                      text4: 'طور',
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
