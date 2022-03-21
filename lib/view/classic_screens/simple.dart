import 'package:flutter/material.dart';
import 'package:romio/view/widgets/stack.dart';
class Simple extends StatelessWidget {
static String id='simp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('بسيطه'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stackk(
              img: 'assets/images/v2.jpg',
              pos1: 50,
              pos2: 50,
              num1: 200,
              num2: 300,
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6),
              child: Text('''تتراوح درجة ذكائهم من 70:55
هم من يستطيعون تعلم بعض المهارات التعليمية االساسية ويجب ان تكون مناهجهم الدراسية                 
مبسطة ومعدة خصيصا لهم ليستطيعوا تعلم العمليات الحسابية والقراءة والكتابة بما يناسب مع               
درجة ذكائهم .              
 يستطيعون تعلم المهارات االجتماعية االساسية عن طريق التدريب الصحيح ويستطيعون 
الحصول على التدريب المهني .               
                          
                ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
