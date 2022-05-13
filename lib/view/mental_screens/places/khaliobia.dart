import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Khaliobia extends StatelessWidget {
  const Khaliobia ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('القليوبية '),
      ),
      body: Column(
        children: [
          const Stackk(img:'assets/images/places/khaliobia.jpg', ),
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
                      text1: 'مركز أكاديمية بهجة',
                      text2: 'شارع جمال عبد الناصر كفر شقر ',
                      text3: '01027956444',
                      text4: 'كفر شقر ',
                    ),
                    CustomPlaces(
                      text1: 'أكاديمية قدراتي ',
                      text2: 'القليوبية – العبور ',
                      text3: '01111299696',
                      text4: 'العبو',
                    ),
                    CustomPlaces(
                      text1: 'مؤسسة نبع الحنان لذوي الاحتياجات الخاصة ',
                      text2: '17 شارع 15 مايو شبرا الخيمة ',
                      text3: '01226645504',
                      text4: 'شبرا الخيمة',
                    ),
                    CustomPlaces(
                      text1: 'مركز المستقبل لذوي الاحتياجات الخاصة ',
                      text2: '9 ب أبراج المدينة المنورة – شارع 15 مايو ',
                      text3: '01111877908',
                      text4: 'شبرا الخيمة',
                    ),
                    CustomPlaces(
                      text1: 'مركز رؤية للتوحد ',
                      text2: '52 شارع محمد أبو الهنا – أرض نوبار – شبرا الخيمة ',
                      text3: '01143801654',
                      text4: 'شبرا الخيمة ',
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
