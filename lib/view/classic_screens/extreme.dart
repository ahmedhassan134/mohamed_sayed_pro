import 'package:flutter/material.dart';

import '../widgets/stack.dart';
class Extreme extends StatelessWidget {
static String id='ex';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('شديده'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stackk(
              img: 'assets/images/v4.webp',
              pos1: 50,
              pos2: 50,
              num1: 200,
              num2: 300,
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6),
              child: Text('''تتراوح درجة ذكائهم من 39:25
يطلق عليهم االشخاص االعتماديون فهم يعتمدون على غيرهم في شؤنهم الحياتية اليومية لعدم 
قدرتهم على تعلم المهارات اليومية فهذة الفئة غير قابلين للتعليم وال للتاهيل فهم بحاجة الي 
الرعاية والمتابعة المستمرة .
                            
                  ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            )

          ],
        ),
      ),
    );
  }
}
