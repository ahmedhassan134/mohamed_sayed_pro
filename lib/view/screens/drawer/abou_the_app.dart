import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  static String id = 'aboutApp';

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
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .9,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        // Expanded(child: Image.asset('assets/images/bns.png')),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/bns.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'كليه علوم ذوي الاحتياجات الخاصه جامعه بني سويف ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/bns2.jfif'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '   الجميع من بنى ماضى مركز ببا محافظه بنى سويف طرف اول بائعيين وكلا من عائشه حسن اسماعيل \اسماء حسن اسماعيل\وفاء حسن اسماعيل\ايمان حسن اسماعيل \محمد حسن اسماعيل\احمد حسن اسماعيل\ايه حسن اسماعيل\عبد الرحمن حسن اسماعيل الجميع من بنى ماضى مركز ببا محافظه بنى سويف طرف ثانى مشترى 													تمهيد								حيث يمتلك الطرف الاول البائع عما هو الاتى وصفا وتفصيلا 1\منزل مكون من دوريين مبنى بالطوب الاحمر والبلوك ومصبوب بالخشب يقع زمام قريه بنى ماضى مركز ببا على مساحه 80 متر تقريبا ومحدد بحدود اربعه الحد القبلى شارع الحد البحرى سيد محمد ضيف الله الحد الغربى شارع الحد الشرقى ورثه اسماعيل خليل فيزالله ويقدر بمبلغ 150000 فقط مائه وخمسون الف جنيه 2\منزل مكون من خمس طوابق مبنى من الاعمده الخراسنيه والطوب الاحمر يقع بزمام بندر بنى سويف شارع المعاون المفرع  من شارع البوصه الجزيره المرتفعه على مساحه 65 متر تقريبا محدد بحدود اربعه الحد القبلى شارع المعاون الحد البحرى منزل غريب عبدالله الحد الشرقى منزل  عبده جنيدى الحد الغربى منزل حمدان حسن ويقدر بمبلغ 700000 فقط سبعمائه الف جنيه 3\منزل مكون من اربع طوابق مبنى بالبلوك والخرسان يقع بناحيه الشيخ على قريه بياض العرب مركز بنى سويف على مساحه 170 متر تقريبا محدد بحدود اربعه الحد القبلى شارع الحد البحرى طه محمود سالم الحد الغربى وضع يد اخرون الحد الشرقى وضع يد اخرون ويقدر بمبلغ 700000 فقط سبعمائه الف جنيه 4\قطعه ارض محاطه بسور من البلوك  على مساحه 100متر تقريبا بزمام قريه بنى ماضى مركز ببا محافظه بنى سويف محدده بحدود اربعه الحد البحرى شارع الحد القبلى ورثه عبدالعزيز الخشن الحد الغربى ايمن محمود الحد الشرقى عفاف احمد سيد ويقدر بمبلغ 200000 فقط مائتى الف جنيه  وبعد ان اقر الطرفان فيما بينهما بالتصرف بالبيع من الطرف الاول البائع  الى الطرف الثانى المشترى اتفقا على البنود الاتيه 								البند الاول يعتبر التمهيد السابق وصفا وتفصيلا جزء لا يتجزاء من بنود العقد وتعتبر اى اوراق او عقود سابقه لتاريخ هذا العقد لاغيه ولا يجوز العمل بها 				البند الثانى تم البيع ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 16),
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
