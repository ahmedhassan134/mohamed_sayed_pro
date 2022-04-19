import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
class CustomExpanded extends StatelessWidget {
  CustomExpanded({required this.img,required this.text,required this.onTap});
 String ? img;
 String ? text;
 Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:onTap,
        child: Container(

          alignment: Alignment.bottomCenter,
          width: SizeConfig.defaultSize * .25,
                 height: SizeConfig.defaultSize * 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(img!),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 5,bottom: 3),
            child: FittedBox(
              child: Text(
                text!,
                style: TextStyle(
                    color: Colors.black.withOpacity(1),
                    fontSize: 3 * SizeConfig.blockSizeVertical  ,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
