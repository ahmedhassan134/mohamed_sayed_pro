import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
import '../widgets/stack.dart';

class VeryExtreme extends StatelessWidget {
  static String id = 'ver';

  const VeryExtreme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حاده'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pinkAccent, Colors.amberAccent])),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stackk(
                  img: 'assets/images/v3.jpg',

                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 10,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      end: SizeConfig.defaultSize * 1,
                      start: SizeConfig.defaultSize * 1),
                  child: Text(
                    '''درجة ذكائهم اقل من 25
تعتبر اشد درجات الاعاقة العقلية وهي غير قادرة على التعليم ولا التدريب ولا التاهيل بسبب اعاقتهم الشديدة واعتمادهم على الاخرين في جميع شؤونهم العامة والخاصة وغير مدركين للزمان او المكان والاشخاص وهم بحاجة الي رعاية واهتمام دائم وبصفة خاصة .
                 
                      ''',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 3,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
