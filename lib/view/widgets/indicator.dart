import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
class Indicator extends StatelessWidget {


  int ? index;
  Indicator(this.index);

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circular(index==0?Colors.green:Colors.red),
        circular(index==1?Colors.green:Colors.red),
        circular(index==2?Colors.green:Colors.red),
        circular(index==3?Colors.green:Colors.red),

      ],
    );
  }
  Widget circular(Color color)
  {
    return  Container(
      margin: const EdgeInsets.all(5),
      height: SizeConfig.defaultSize * 2,
      width: SizeConfig.defaultSize * 2,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
}