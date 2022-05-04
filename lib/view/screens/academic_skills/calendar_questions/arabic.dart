
import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/widgets/calender_widget/non_text.dart';
import 'package:romio/view/widgets/calender_widget/text.dart';
class CalenderArabic extends StatefulWidget {
  const CalenderArabic({Key? key}) : super(key: key);
  static String id='CalenderArabic';

  @override
  _CalenderArabicState createState() => _CalenderArabicState();
}

class _CalenderArabicState extends State<CalenderArabic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عربي'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 34,  text: 'أ',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 26, margeTop:SizeConfig.defaultSize*  0, ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 19, margeTop: 0, ),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 12,  text: 'ث',margeTop:SizeConfig.defaultSize* 1 ),


            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 6,  text: 'ج',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 1, margeTop:SizeConfig.defaultSize*  0 ),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 6,  text: 'خ',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 12, margeTop:SizeConfig.defaultSize*  0 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 19, margeTop:SizeConfig.defaultSize*  0),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 28,  text: 'ر',margeTop:SizeConfig.defaultSize* 0 ),


            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 21,  text: 'ز',margeTop:SizeConfig.defaultSize* 0 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 15, margeTop:SizeConfig.defaultSize*  0),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 9,  text: 'ش',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 1,margeTop:SizeConfig.defaultSize*  0 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 6, margeTop:SizeConfig.defaultSize*  0),



            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 12,  text: 'ط',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 19, margeTop:SizeConfig.defaultSize*  0),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 28, margeTop:SizeConfig.defaultSize*  0),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 21,  text: 'غ',margeTop:SizeConfig.defaultSize* 1 ),


            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 15,  text: 'ف',margeTop:SizeConfig.defaultSize* 1 ),
      NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 9, margeTop:SizeConfig.defaultSize*  0),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 1,  text: 'ك',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 6, margeTop:SizeConfig.defaultSize*  0),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 12,  text: 'م',margeTop:SizeConfig.defaultSize* 1 ),
            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 19,  text: 'ن',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 28,margeTop:SizeConfig.defaultSize*  0 ),

            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 21, margeTop:SizeConfig.defaultSize*  0),
            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 15,  text: 'ي',margeTop:SizeConfig.defaultSize* 1 ),
            SizedBox(height: SizeConfig.defaultSize* 1,),


            const Divider(color: Colors.black,),
            SizedBox(height: SizeConfig.defaultSize* 2,),










          ],
        ),
      ),
    );
  }
}





