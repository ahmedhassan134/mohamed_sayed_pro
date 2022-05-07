import 'package:flutter/material.dart';


import '../../service/responsive_service.dart';
class CustomPlaces extends StatelessWidget {
  const CustomPlaces ({Key? key,required this.text1,required this.text2,required this.text3,required this.text4}) : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          width: double.infinity,
          height: SizeConfig.defaultSize * 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(SizeConfig.defaultSize*1.4),
              topLeft: Radius.circular(SizeConfig.defaultSize*1.5),
            ),
            color: Colors.blueGrey,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: SizeConfig.defaultSize * 2,
                end: SizeConfig.defaultSize * 1.3,
                bottom: SizeConfig.defaultSize * 2,
                start: SizeConfig.defaultSize * 2,),
              child:  Text(
                text1,
                style:  TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.defaultSize * 2.3,
                    fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          width: double.infinity,
          height: SizeConfig.defaultSize * 20,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(SizeConfig.defaultSize*1),
              bottomLeft: Radius.circular(SizeConfig.defaultSize*1),
            ),
            color: Colors.deepPurpleAccent,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                top: SizeConfig.defaultSize * 1,
                end: SizeConfig.defaultSize * 1,
                bottom: SizeConfig.defaultSize * .3,
                start: SizeConfig.defaultSize * 1,),
              child:  Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text2,
                    style:  TextStyle(
                        fontSize: SizeConfig.defaultSize * 2.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    'مركز :  $text4',
                    style:  TextStyle(
                        fontSize: SizeConfig.defaultSize * 2.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: SizeConfig.defaultSize *.3,),
                  Text(
                    'رقم الهاتف :  $text3',
                    style:  TextStyle(
                        fontSize: SizeConfig.defaultSize * 2.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(height: SizeConfig.defaultSize *.3,),

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.defaultSize * 3,)
      ],
    );
  }
}