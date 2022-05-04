import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Qena extends StatelessWidget {
  const Qena ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('قنا '),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/qena.jpg', ),
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
                      text1: 'مركز تواصل ',
                      text2: 'شارع المدارس بجوار قاعة ميراج – أمام التأمين الصحي ',
                      text3: '01001369000',
                      text4: 'قنا ',
                    ),
                    CustomPlaces(
                      text1: 'مركز بداية ',
                      text2: 'معبر الشاب – أمام بوابة كلية الهندسة ',
                      text3: '01012720843',
                      text4: 'قنا',
                    ),
                    CustomPlaces(
                      text1: 'مركز خواطر ',
                      text2: '1 بمقر أكاديمية الطفل العبقري – فرع قنا – حوض 10 – خلف برج صبري الحكيم',
                      text3: '01222310410',
                      text4: 'حوض 10',
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
