import 'package:flutter/material.dart';

import '../widgets/stack.dart';
class Medium extends StatelessWidget {
static String id='med';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('متوسطه'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stackk(
              img: 'assets/images/v5.jpg',
              pos1: 50,
              pos2: 50,
              num1: 200,
              num2: 300,
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6),
              child: Text('''تتراوح درجة ذكائهم من تتراوح درجة ذكائهم من 54:40
وهم غير قادرين على تعلم المهارات التعليمية ولكن يمكن تدريبهم وتاهيلهم على القيام ببعض 
المهارات الحياتية والمهنية البسيطة .
هذة الفئة تقابل القابلون للتدريب حيث اليستطيعوا تعلم المهارات االكاديمية االساسية اكثر من 
المستوى االول .لكن يمكن تدريبهم على مهارات رعاية الذات االساسية والقدرات المهنية .           
                            
                  ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
