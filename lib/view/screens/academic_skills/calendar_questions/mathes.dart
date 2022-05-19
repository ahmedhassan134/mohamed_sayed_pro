
import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/widgets/calender_widget/non_text.dart';
import 'package:romio/view/widgets/calender_widget/text.dart';
class CalenderMath extends StatefulWidget {
  const CalenderMath({Key? key}) : super(key: key);
  static String id='CalenderMath';

  @override
  _CalenderMathState createState() => _CalenderMathState();
}

class _CalenderMathState extends State<CalenderMath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حساب'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 34,  text: '1',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 26 ,margeTop:SizeConfig.defaultSize*  0, answerM: '2'),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 19,margeTop:SizeConfig.defaultSize*  0 , answerM: '3'),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 12,  text: '4',margeTop:SizeConfig.defaultSize* 1 ),


            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 6,  text: '5',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 1,margeTop:SizeConfig.defaultSize*  0, answerM: '6' ),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 6,  text: '7',margeTop:SizeConfig.defaultSize* 1 ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 12,margeTop:SizeConfig.defaultSize*  0, answerM: '8' ),
            NonTextCircularAvatar(margeStart:SizeConfig.defaultSize* 19, margeTop:SizeConfig.defaultSize*  0, answerM: '9'),

            TextCircualrAvatar(margeStart: SizeConfig.defaultSize* 28,  text: '10',margeTop:SizeConfig.defaultSize* 1 ),



            const Divider(color: Colors.black,),
            SizedBox(height: SizeConfig.defaultSize* 2,),










          ],
        ),
      ),
    );
  }
}
