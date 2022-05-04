
import 'package:flutter/material.dart';


import '../../../service/responsive_service.dart';
import '../../widgets/stack.dart';

class AdviceHome extends StatefulWidget {
  static String id = 'advice';

  const AdviceHome({Key? key}) : super(key: key);

  @override
  State<AdviceHome> createState() => _AdviceHomeState();
}

class _AdviceHomeState extends State<AdviceHome>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;

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
          Stackk(
            img: 'assets/images/tips_and_advice/1.png',
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 5,
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: SizeConfig.defaultSize * 3,
                      end: SizeConfig.defaultSize * 1,
                      start: 2,
                      bottom: SizeConfig.defaultSize * 1),
                  child:  Text(
                    ':نصائح وارشادات ',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: SizeConfig.defaultSize * 3,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: SizeConfig.defaultSize * 1,
                      end: SizeConfig.defaultSize * .9,
                      start: SizeConfig.defaultSize * .7,
                      bottom: SizeConfig.defaultSize * 1),
                  child: Text(
                    '''
 اولادنا طاقة وليسوا اعاقة يجب استغلالها في تنمية قدراتهم ينبغي تدريب المعاقين عقليا على مهارات العناية بالذات فهم يعانون من تدني في المهارات الحياتية   
مراعاة تجزئة اي مهمة اواي عمل في بداية تعليم المعاقين عقليا 
عدم اظهار الخوف منهم او تجنب المعاملة معهم فهم بشر قبل اي شئ 
عدم مناداة الطفل المعاق عقليا باسم اعاقتة او بالمعتوه او الابله فيجب مناداتة باسمه او كنيتة 
مراعاة المعاقين عقليا في فترة المراهقة واستغلال طاقاتهم في حرف او مهن او انشطة رياضية  
تدريبهم باستمرار منذ الصغر على العضلات الدقيقة اصطحابهم في المناسبات ومراعاة مشاعرهم وذلك لمساعدتهم على الاندماج في المجتمع  
معاملتهم باعتبارهم اشخاص عاديين وعدم الاستهزاء بهم او السخرية منهم 
ينبغي استخدام الاشياء التي تجذب الانتباه مثل الاشياء التي تصدر صوتا او بها الوان زاهية او ضوء عند تعليمهم  
عدم مواجهه العنف بالعنف فهم يعانون من العناد والعدوان والعنف فهي سلوكيات يجب 
تعديلها وليس زيادتها بالمعاملة الندية
ان تكون العالقة بين الاخصائي والطفل المعاق عقليا قائمة على التقبل والالتزام ينبغي ان يكون الاخصائي. 
يجب ان يكون الاخصائي لدية الكفاءة المهنية والخبرة المعرفية للتعامل مع الطفل المعاق ذهنيا  
تحويل سياق الاسرة وبيئتها الي سياق داعم 
مراعاة القلق والاكتئاب الذي يعانيه ذوي الاعاقة العقلية حيث تنتشر تلك المشاعر لديهم
مساعدة المعاقين عقليا على زيادة الثقة بانفسهم وبث المشاعر الايجابية فيهم 
ادماج المعاقين عقليا بالمجتمع الخارجي (خارج نطاق الاسرة )
يجب على ولي الامر تقبل اعاقة طفلة فذلك يساعد على تقدم الطفل وخلق جو تفاعلي معه ودفعة للعمل مع طفلة منذ الصغر  
تجنب زواج الاقارب للحد من انجاب اطفال معاقين عقليا 
التعامل السوي مع المعاقين عقليا فهم بشر لهم حقوق على كل المحيطين بهم شأنهم شأن الاطفال الاسوياء  
تجنب التوجيهات او التعليمات التي بها اكثر من امر عند التعامل مع الطفل المعاق ذهنيا 
يجب على الاخصائي وولي الامر مراعاة الفروق الفردية لطفلهم 
الاسراع في العمل مع الطفل من خلال برامج التدخل المبكر التي تبدا منذ والدته حيث يعمل ذلك على تقدم كبير جدا في جميع جوانب نمو الطفل المعاق ذهنيا 
احترام الافراد المعاقين ذهنيا فهم لهم حقوق وايضا عليهم واجبات الصبر والتاني عند التعامل مع المعاقين ذهنيا  
ينبغي الاطلاع على احدث الوسائل التكنولوجية مراعاة متابعة ولي الامر مع الاخصائي لمعرفة مدى تقدم في حالة الطفل مع المشاركة معه  
يجب على الاخصائي مراعاة حالة الاسرة النفسية والمادية
مراعاة مبدا تكافؤ الفرص من خالل التعامل مع الطفل الي اقرب ما يكون 
يجب على المتخصصين في ميدان التربية الخاصة تنظيم دورات تدريبة ومبادرات وورش عمل لتقديم النصح والارشاد الهالي الاطفال ذوي الاعاقة بصفة خاصة والمجتمع بصفة عامة  
ينبغي علي الدولة الاهتمام بالباحثين والقائمين في مجال التربية الخاصة وتقديم كافة وسائل المساندة والدعم لهم  
التحدث مع الطفل اكبر قدر ممكن لتنمية الجانب المعرفي 
عدم السماح للطفل المعاق ذهنيا بعمل كل مايريد بحجة اعاقته فالخطا سيظل خطا ولو القائم به طفل معاق لذلك يجب تصحيح اخطاءه اول باول لتجنب تفاقم اي مشكلة 
لا يجب تخمين اعاقة الطفل او درجة اعاقته بناءا على النظر الن ذلك يحتاج الي عمل فريق كامل متكامل لتشخيص الطفل ووضعه في الفئة التي تناسبه 
       ''',
                    style: TextStyle(fontSize: SizeConfig.defaultSize*2.5, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
