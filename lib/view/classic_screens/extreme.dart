import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
import '../widgets/stack.dart';
class Extreme extends StatelessWidget {
static String id='ex';

  const Extreme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شديده'),
      ),
      body:Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Stackk(
                  img: 'assets/images/v4.webp',

                ),
                SizedBox(height: SizeConfig.defaultSize*10,),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1),
                  child:  Text('''تتراوح درجة ذكائهم من 39:25
يطلق عليهم الاشخاص الاعتماديون فهم يعتمدون على غيرهم في شؤنهم الحياتية اليومية لعدم قدرتهم على تعلم المهارات اليومية فهذة الفئة غير قابلين للتعليم ولا للتاهيل فهم بحاجة الي الرعاية والمتابعة المستمرة . 
            ''',textDirection: TextDirection.rtl,style: TextStyle(fontSize: SizeConfig.defaultSize *3,fontWeight: FontWeight.bold),),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
