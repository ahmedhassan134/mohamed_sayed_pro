import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class RedSea extends StatelessWidget {
  const RedSea ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('البحر الاحمر '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/red_sea.jpg', ),
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
                      text1: 'جمعية ادارة لرعاية ذوي الاحتياجات الخاصة  ',
                      text2: 'مدينة الغردقة – منطقة الدهار – شارع البوسطة – حي العرب',
                      text3: '',
                      text4: 'الغردقة ',
                    ),
                    CustomPlaces(
                      text1: 'مركز التأهيل الشامل لذوي الاحتياجات الخاصة ',
                      text2: 'البحر الاحمر القصير ',
                      text3: '',
                      text4: 'القصير',
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
