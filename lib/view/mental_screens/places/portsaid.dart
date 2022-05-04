import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class PortSaid extends StatelessWidget {
  const PortSaid ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بورسعيد'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/portsaid.jpg', ),
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
                      text1: 'مؤسسة بورسعيد للارشاد الاسري  ',
                      text2: 'بورسعيد – شارع 23 يوليو والجيش – مجمع السلام بجوار جامع لطفي شياره – مدخل 3 – الدور الثاني  ',
                      text3: '01006622889',
                      text4: 'شارع 23 يوليو',
                    ),
                    CustomPlaces(
                      text1: 'مركز الريادة لتنمية قدرات الأطفال ببورسعيد (تنميه قدرات الاطفال ( توحد وتخاطب , تعديل سلوك , تنميه مهارات صعوبات التعلم , استشارات نفسيه ) ويقدم المركز الخدمات لجميع فئات الاطفال ذوي الاحتياجات الخاصة و أطفال المدراس العادية ',
                      text2: 'بورسعيد – نهاية شارع النصر – أبراج الاندلس برج رقم 5 ',
                      text3: '01221659133',
                      text4: 'شارع النصر ',
                    ),
                    CustomPlaces(
                      text1: 'مركز رعاية لتنمية قدرات الأطفال ببورسعيد استقبال حالات ( متلازمة داون – التاخر العقلي – اضطراب التوحد – ضغف السمع ) تحت إشراف أ/ محمد السرجاني مسئول دمج ذوي الاحتياجات الخاصة ببورسعيد',
                      text2: 'بورسعيد – أبراج خان الخليلي بجوار  مسجد الرسول ',
                      text3: '01223726239',
                      text4: 'بورسعيد',
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
