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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                 padding: const EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
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
