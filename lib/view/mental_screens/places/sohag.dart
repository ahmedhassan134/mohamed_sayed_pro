import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/custom_places.dart';
import '../../widgets/stack.dart';
class Sohag extends StatelessWidget {
  const Sohag ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سوهاج'),
      ),
      body: Column(
        children: [
          Stackk(img:'assets/images/places/sohag.jpg', ),
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
                      text1: 'جمعية تنمية المجتمع لذوي الاحتياتجات الخاصة ',
                      text2: 'مساكن العمري عقار  (44) الدور الأول – سوهاج ',
                      text3: '093332377',
                      text4: 'مساكن العمري',
                    ),
                    CustomPlaces(
                      text1: 'جمعية إبداع لتنمية المجتمع ورعاية الفئات الخاصة ( عيادة د/ ميرفت فتح الله ) ',
                      text2: 'المراغه – شارع أسيوط سوهاج – أمام مجمع المختار ',
                      text3: '01112780567',
                      text4: 'المراغه',
                    ),
                    CustomPlaces(
                      text1: 'جمعية كيان للأشخاص ذوي الاعاقة ',
                      text2: 'مقر المجلس القومي للسكان – الزهراء ',
                      text3: '01001422281',
                      text4: 'سوهاج',
                    ),
                    CustomPlaces(
                      text1: 'مركز خواطر (تأخر النمو اللغوي – التوحد ومتلازمة داون – اللدغات والتلعثم – الشلل الدماغي – الإعاقة السمعية – برنامج تعديل السلوك – فرط الحركة ونقص الانتباه – برنامج الإرشاد الأسري)',
                      text2: 'أبراج العدالة، أمام هيئة محو الأمية – مدينة ناصر على الكورنيش',
                      text3: '01007986744',
                      text4: 'سوهاج ',
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
