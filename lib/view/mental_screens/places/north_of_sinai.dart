import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class NorthOfSinai extends StatelessWidget {
  const NorthOfSinai ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شمال سيناء'),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/sinai_north.jpg', ),
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
                      text1: 'مركز التأهيل الشامل الإجتماعي للمعاقين ',
                      text2: 'شارع الجيش – العريش – شمال سيناء ',
                      text3: '0683355674',
                      text4: 'العريش',
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
