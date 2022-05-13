import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Matrooh extends StatelessWidget {
  const Matrooh ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مرسي مطروح '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/matroh.jpg', ),
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
                      text1: 'مركز رغد الطبي لذوي الاحتياجات الخاصة ',
                      text2: 'أمام الرعاية الصحية بجوار المستشفي الأطفال التخصصي ',
                      text3: '01093001383',
                      text4: 'مطروح',
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
