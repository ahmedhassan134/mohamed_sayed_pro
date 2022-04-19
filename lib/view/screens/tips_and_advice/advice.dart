import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:romio/view/widgets/custom_stack.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/stack.dart';

class AdviceHome extends StatefulWidget {
  static String id = 'advice';

  @override
  State<AdviceHome> createState() => _AdviceHomeState();
}

class _AdviceHomeState extends State<AdviceHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    )..repeat();
    animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('النصائح والارشادات'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stackk(img:'assets/images/tips_and_advice/1.png', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
        Expanded(
         
          child: ListView
            (
            children: const [
               Padding(
                 padding: EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
                 child: FittedBox(
                   child: Text(
                    ':نصائح وارشادات ',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),textAlign: TextAlign.end,
              ),
                 ),
               ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('''
 اوالدنا طاقة وليسوا اعاقة يجب استغاللها في تنمية قدراتهم 
ينبغي تدريب المعاقين عقليا على مهارات العناية بالذات فهم يعانون من تدني في المهارات 
الحياتية 
مراعاة تجزئة اي مهمة اواي عمل في بداية تعليم المعاقين عقليا 
عدم اظهار الخوف منهم او تجنب المعاملة معهم فهم بشر قبل اي شئ 
عدم مناداة الطفل المعاق عقليا باسم اعاقتة او بالمعتوه او االبله فيجب مناداتة باسمه او كنيتة 
مراعاة المعاقين عقليا في فترة المراهقة واستغالل طاقاتهم في حرف او مهن او انشطة 
رياضية 
تدريبهم باستمرار منذ الصغر على العضالت الدقيقة 
اصطحابهم في المناسبات ومراعاة مشاعرهم وذلك لمساعدتهم على االندماج في المجتمع 
معاملتهم باعتبارهم اشخاص عاديين وعدم االستهزاء بهم او السخرية منهم 
ينبغي استخدام االشياء التي تجذب االنتباه مثل االشياء التي تصدر صوتا او بها الوان زاهية او 
ضوء عند تعليمهم 
عدم مواجهه العنف بالعنف فهم يعانون من العناد والعدوان والعنف فهي سلوكيات يجب 
تعديلها وليس زيادتها بالمعاملة الندية
ان تكون العالقة بين االخصائي والطفل المعاق عقليا قائمة على التقبل وااللتزام 
ينبغي ان يكون االخصائي
يجب ان يكون االخصائي لدية الكفاءة المهنية والخبرة المعرفية للتعامل مع الطفل المعاق 
ذهنيا 
تحويل سياق االسرة وبيئتها الي سياق داعم 
مراعاة القلق واالكتئاب الذي يعانيه ذوي االعاقة العقلية حيث تنتشر تلك المشاعر لديهم
مساعدة المعاقين عقليا على زيادة الثقة بانفسهم وبث المشاعر االيجابية فيهم 
ادماج المعاقين عقليا بالمجتمع الخارجي )خارج نطاق االسرة (
يجب على ولي االمر تقبل اعاقة طفلة فذلك يساعد على تقدم الطفل وخلق جو تفاعلي معه 
ودفعة للعمل مع طفلة منذ الصغر 
تجنب زواج االقارب للحد من انجاب اطفال معاقين عقليا 
التعامل السوي مع المعاقين عقليا فهم بشر لهم حقوق على كل المحيطين بهم شأنهم شأن 
االطفال االسوياء 
تجنب التوجيهات او التعليمات التي بها اكثر من امر عند التعامل مع الطفل المعاق ذهنيا 
يجب على االخصائي وولي االمر مراعاة الفروق الفردية لطفلهم 
االسراع في العمل مع الطفل من خالل برامج التدخل المبكر التي تبدا منذ والدته حيث يعمل
ذلك على تقدم كبير جدا في جميع جوانب نمو الطفل المعاق ذهنيا 
احترام االفراد المعاقين ذهنيا فهم لهم حقوق وايضا عليهم واجبات 
الصبر والتاني عند التعامل مع المعاقين ذهنيا 
ينبغي االطالع على احدث الوسائل التكنولوجية 
مراعاة متابعة ولي االمر مع االخصائي لمعرفة مدى تقدم في حالة الطفل مع المشاركة معه 
يجب على االخصائي مراعاة حالة االسرة النفسية والمادية
مراعاة مبدا تكافؤ الفرص من خالل التعامل مع الطفل الي اقرب ما يكون 
يجب على المتخصصين في ميدان التربية الخاصة تنظيم دورات تدريبة ومبادرات وورش 
عمل لتقديم النصح واالرشاد الهالي االطفال ذوي االعاقة بصفة خاصة والمجتمع بصفة عامة 
ينبغي علي الدولة االهتمام بالباحثين والقائمين في مجال التربية الخاصة وتقديم كافة وسائل 
المساندة والدعم لهم 
التحدث مع الطفل اكبر قدر ممكن لتنمية الجانب المعرفي 
عدم السماح للطفل المعاق ذهنيا بعمل كل مايريد بحجة اعاقته فالخطا سيظل خطا ولو القائم به 
طفل معاق لذلك يجب تصحيح اخطاءه اول باول لتجنب تفاقم اي مشكلة 
اليجب تخمين اعاقة الطفل او درجة اعاقته بناءا على النظر الن ذلك يحتاج الي عمل فريق 
كامل متكامل لتشخيص الطفل ووضعه في الفئة التي تناسبه 
              
              
              ''',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
              )
            ],
          ),
        )
        ],
      ),
    );
  }
}
