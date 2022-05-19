import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/floating_widget.dart';



class ClothesWearing extends StatelessWidget {
  const ClothesWearing({Key? key}) : super(key: key);

  static String id='clotheswearing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ارتداء الملابس'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children:  [
          Image.asset('assets/images/modfy/clothes_modf.jpg',
            fit: BoxFit.fill,
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
                urll: 'https://youtu.be/Z2cQLMvoDfU',
              ),
              SizedBox(height: SizeConfig.defaultSize *.9,),
              const FloatingWidget(
                heroTag: 'two',
                urll: 'https://youtu.be/SbWwb19nM0U',
              ),
            ],
          ),
        ),

    );
  }
}
