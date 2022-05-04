import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/classic_screens/extreme.dart';
import 'package:romio/view/classic_screens/medium.dart';
import 'package:romio/view/classic_screens/simple.dart';
import 'package:romio/view/classic_screens/very_extreme.dart';
import 'package:romio/view/widgets/custom_container.dart';




import '../widgets/stack.dart';

class Classification extends StatelessWidget {
  static String id = 'cla';

  const Classification({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('الفئات'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stackk(
                img: 'assets/images/mental_retardation/a4.jpg',

              ),
               Container(
                 padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.5,start:  SizeConfig.defaultSize *.5,bottom: SizeConfig.defaultSize *1) ,
                 child: SizedBox
                   (
                  height: SizeConfig.defaultSize *7,
              ),
               ),
              CustomContainer((){
                Navigator.pushNamed(context, Simple.id);
              }, 'بسيطه'),
              CustomContainer((){
                Navigator.pushNamed(context, Medium.id);
              }, 'متوسطه'),
              CustomContainer((){
                Navigator.pushNamed(context, Extreme.id);
              }, 'شديده'),
              CustomContainer((){
                Navigator.pushNamed(context, VeryExtreme.id);
              }, 'حاده'),


            ],
          ),
        ));
  }
}
