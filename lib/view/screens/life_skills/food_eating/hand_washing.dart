import 'package:flutter/material.dart';

import '../../../../service/responsive_service.dart';
import '../../../widgets/floating_widget.dart';



class HandWashing extends StatelessWidget {
  const HandWashing({Key? key}) : super(key: key);

  static String id='HandWashing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('غسل الايدي'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/four.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

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
              urll: ' https://youtu.be/PoklaWFH4wM',
            ),
            SizedBox(height: SizeConfig.defaultSize *.6,),
             const FloatingWidget(
              heroTag: 'two',
              urll: ' https://youtu.be/AXvv1tjnRP4',
            ),
          ],
        ),
      ),


    );
  }
}
