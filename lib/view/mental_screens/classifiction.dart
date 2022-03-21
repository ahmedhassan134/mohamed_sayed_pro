import 'package:flutter/material.dart';
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
                pos1: 50,
                pos2: 50,
                num1: 200,
                num2: 300,
              ),
              const SizedBox(
                height: 60,
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
