import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
import '../widgets/stack.dart';

class Medium extends StatelessWidget {
  static String id = 'med';

  const Medium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('متوسطه'),
      ),
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stackk(
                  img: 'assets/images/v5.jpg',

                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 10,
                ),
                 Padding(
                   padding: EdgeInsetsDirectional.only(end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1),
                   child:  Text(
                    ''' تتراوح درجة ذكائهم من 54:40
وهم غير قادرين على تعلم المهارات التعليمية ولكن يمكن تدريبهم وتاهيلهم على القيام ببعض المهارات الحياتية والمهنية البسيطة . هذة الفئة تقابل القابلون للتدريب حيث لا يستطيعوا تعلم المهارات الاكاديمية الاساسية اكثر من المستوى الاول . 
لكن يمكن تدريبهم على مهارات رعاية الذات الاساسية والقدرات المهنية .     
            ''',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize:  SizeConfig.defaultSize *3, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
