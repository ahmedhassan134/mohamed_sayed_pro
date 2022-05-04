import 'package:flutter/material.dart';
import 'package:romio/view/widgets/custom_places.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/stack.dart';

class Assiut extends StatelessWidget {
  const Assiut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اسيوط'),
      ),
      body: Column(
        children: [
          Stackk(
            img: 'assets/images/places/assuot.jpg',
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 5,
          ),
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
                      text1: 'مركز الأمل التخاطبي ',
                      text2: 'شارع التنجيد خلف ماللك للسجاد بعد مخرج نفق الزهراء فريال ',
                      text3: '01019285661',
                      text4: 'أسيوط ',
                    ),
                    CustomPlaces(
                      text1: 'مركز أمان للتدريب والاستشارات التربوية ',
                      text2: '  78 ميدان المحافظة – أمام المجلس المحلي ',
                      text3: '01004092558',
                      text4: 'أسيوط ',

                    ),
                    CustomPlaces(
                      text1: 'مركز عالمي الخاص ',
                      text2: 'شارع الهلالي – خلف مسجد الخلفاء عمارة 3  ',
                      text3: '01021544997',
                      text4: 'أسيوط ',
                    ),
                    CustomPlaces(
                      text1: 'مركز كيان ',
                      text2: 'شارع الزراعيين  ',
                      text3: '01015228118',
                      text4: 'أسيوط ',
                    ),
                    CustomPlaces(
                      text1: 'مركز تأهيل الفتيات المعاقات ',
                      text2: 'الناصرية – مركز الفتح  مركز الناصرية ',
                      text3: '01064610342',
                      text4: 'أسيوط ',
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
