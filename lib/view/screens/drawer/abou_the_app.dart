import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';

class AboutApp extends StatelessWidget {
  static String id = 'aboutApp';

  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'عن التطبيق',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize * 1,
                  vertical: SizeConfig.defaultSize * 1),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize * 1,
                  vertical: SizeConfig.defaultSize * 2),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .9,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius:
                      BorderRadius.circular(SizeConfig.defaultSize * 1.5)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Expanded(child: Image.asset('assets/images/bns.png')),
                        CircleAvatar(
                          radius: SizeConfig.defaultSize * 3,
                          backgroundImage:
                              const AssetImage('assets/images/bns.png'),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * 1,
                        ),
                        Expanded(
                          child: Text(
                            'كليه علوم ذوي الاحتياجات الخاصه جامعه بني سويف طلاب  (الاعاقه العقليه) ',
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize * 1.7,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * 1,
                        ),
                        CircleAvatar(
                          radius: SizeConfig.defaultSize * 3,
                          backgroundImage:
                              const AssetImage('assets/images/bns2.jfif'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize * 3,
                    ),
                    Text(
                      '''يصبو تطبيق الإعاقة العقلية إلي تعريفك على  قدرات وإمكانات الطفل ذوي الاعاقة العقلية ، ثم ينقلك الي كيفية تعليمه وتنمية مهاراته فالتطبيق يسعى إلى مساعدة ولي الأمر بشكل خاص وفريق العمل القائم على رعاية الطفل بشكل عام فهو يساعد ولي الأمر على معرفةابنه المعاق فكريا بشكل صحيح من خلال معرفتة للاعاقة العقلية وسمات المعاقين وفئاتهم وكيفية التعامل معهم 
ويساعد الاخصائي على كيفية تشخيص الطفل 
ثم بعد ذلك انتقل التطبيق الي أكثر المهارات التي يحتاجها الفرد المعاق ذهنيا وهي المهارات الحياتية وذلك من خلال تعليمه كيفية تناول الطعام وأدوات تناوله وتعليمه غسل اليدين وارتداء الملابس بعد تعريفه عليها وراعى التطبيق الفئتين (ذكر ،انثى) وتعليمة كيف يقضي حاجته عند دخول المرحاض ثم بعد ذلك انتقل التطبيق بالطفل الي مستوى التعليم الأكاديمي المتمثل في تعليمة الارقام من 15:1عددا وكميا وتعليمه الحروف الابجديه مع وجود اسئلة تقويمية للطفل متبعة بتعزيز لتحفيز الطفل على الاستمرار ويقدم التطبيق نصائح لكل من يتعامل مع الفرد المعاق ذهنيا سواء ولي الأمر أو الاخصائي وكذلك المجتمع فهدفنا نحن طلاب كلية علوم ذوي الاحتياجات الخاصة بجامعة بني سويف قسم الإعاقة العقلية تحقيق أكبر استفادة ممكنه من قدرات المعاقين ذهنيا واستثمار طاقتهم المكبوته في تنمية قدراتهم ومساعدة ولي الأمر على فهم ابنه بشكل صحيح وتوجيه قدراته .''',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: SizeConfig.defaultSize * 2,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
