import 'package:flutter/material.dart';

import '../widgets/stack.dart';
class VeryExtreme extends StatelessWidget {
static String id='ver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حاده'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stackk(
              img: 'assets/images/v3.jpg',
              pos1: 50,
              pos2: 50,
              num1: 200,
              num2: 300,
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6),
              child: Text('''درجة ذكائهم اقل من 25
تعتبر اشد درجات االعاقة العقلية وهي غير قادرة على التعليم وال التدريب وال التاهيل بسبب 
اعاقتهم الشديدة واعتمادهم على االخرين في جميع شؤونهم العامة والخاصة وغير مدركين 
للزمان او المكان واالشخاص وهم بحاجة الي رعاية واهتمام دائم وبصفة خاصة .
              
                            
                  ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}