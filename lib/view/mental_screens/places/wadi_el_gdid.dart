import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class WadiElgdid extends StatelessWidget {
  const WadiElgdid ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الوادي الجديد'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/wadi_elgdid.jpg', ),
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
                      text1: 'جمعية التاهيل الإجتماعي بالخارجة  ',
                      text2: 'شارع أنور البارودي،قسم الواحات الداخلة',
                      text3: '0927920035',
                      text4: 'الداخلة',
                    ),
                    CustomPlaces(
                      text1: 'مركز كلامي للرعاية والتأهيل ',
                      text2: 'الوادي الجديد – الخارجة ',
                      text3: '01003547663',
                      text4: ' الداخلة ',
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
