
import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/floating_widget.dart';



class FoodEatingTwo extends StatelessWidget {
  const FoodEatingTwo({Key? key}) : super(key: key);

  static String id='FoodEatingTwo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تناول الطعام'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children:  [
          Image.asset('assets/images/modfy/food_eating_modf.jpg',
            fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,),


        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5,),
        margin:EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5, ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [

            const FloatingWidget(
              heroTag: 'one',
              urll: 'https://youtu.be/Ci1Mk9xtHUg',
            ),
            SizedBox(height: SizeConfig.defaultSize *.9,),
            const FloatingWidget(
              heroTag: 'two',
              urll: 'https://youtube.com/shorts/oOXTR61azGM?feature=share',
            ),
            SizedBox(height: SizeConfig.defaultSize *.9,),
            const FloatingWidget(
              heroTag: 'three',
              urll: 'https://youtu.be/KgvH8UzdOOg',
            ),
          ],
        ),
      ),

    );
  }
}
