
import 'package:flutter/material.dart';
import 'package:romio/view/widgets/custom_places.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/stack.dart';

class Alex extends StatelessWidget {
  const Alex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاسكندريه'),
      ),
      body: Column(
        children: [
          Stackk(
            img: 'assets/images/places/alex.jpg',
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: SizeConfig.defaultSize * 1,
                  end: SizeConfig.defaultSize * 1,
                  bottom: SizeConfig.defaultSize * 1,
                  top: SizeConfig.defaultSize * 4,
                ),
                child: Column(
                  children: const [
                    CustomPlaces(
                      text1: 'كارتياس مركز سيتي ',
                      text2: '75 شارع مرتضي – جناكليس  ',
                      text3: '01227393709',
                      text4: 'الإسكندرية',
                    ),
                    CustomPlaces(
                      text1: 'مركز بيت النعمة للمعاقين ذهنياً ',
                      text2:
                          'كنيسة السيدة العذراء القديس يوسف منزل 25 شارع توت عنخ أمون ',
                      text3: '4268270',
                      text4: 'الإسكندرية',
                    ),
                    CustomPlaces(
                      text1: 'مركز الوفاء لتأهيل ذوي الإعاقة الذهنية ',
                      text2:
                          'المندرة القبلية – شارع النبوي المهندس- تقسيم شركة القاهرة للإسكان والتعمير ',
                      text3: '3229137',
                      text4: 'الإسكندرية',
                    ),
                    CustomPlaces(
                      text1: 'بيت الرجاء ( لرعاية ذوي الاحتياجات الخاصة ) ',
                      text2: '25 شارع محمد فؤاد جلال ',
                      text3: '01004035535\n 01224956020',
                      text4: 'الإسكندرية',
                    ),
                    CustomPlaces(
                      text1: 'مركز النمو للتأهيل  والدمج المجتمعي  ',
                      text2:
                          'برج قصر الصفا – الحضرة الجديدة – طريق قنال المحمودية – حي المهندسين ',
                      text3: '01205544490',
                      text4: 'الإسكندرية',
                    ),
                    CustomPlaces(
                      text1: 'حضانة بيبي نيدز ',
                      text2:
                          'شارع جامع يحيي – أمام دار محمد رجب للمسنين زيزينا\n',
                      text3: '01008367670',
                      text4: 'الإسكندرية',
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
