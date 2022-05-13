import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/widgets/stack.dart';
class Simple extends StatelessWidget {
static String id='simp';

  const Simple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('بسيطه'),
        ),
        body: Stack(
          children: [

            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Stackk(
                    img: 'assets/images/v2.jpg',

                  ),
                  SizedBox(height: SizeConfig.defaultSize*10,),
                   Padding(
                    padding: EdgeInsetsDirectional.only(end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1),
                    child: Text('''تتراوح درجة ذكائهم من 70:55
هم من يستطيعون تعلم بعض المهارات التعليمية الاساسية ويجب ان تكون مناهجهم الدراسية  مبسطة ومعدة خصيصا لهم ليستطيعوا تعلم العمليات الحسابية والقراءة والكتابة بما يناسب مع درجة ذكائهم .
يستطيعون تعلم المهارات الاجتماعية الاساسية عن طريق التدريب الصحيح ويستطيعون الحصول على التدريب المهني .                                
 
                     ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize:  SizeConfig.defaultSize *3,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
