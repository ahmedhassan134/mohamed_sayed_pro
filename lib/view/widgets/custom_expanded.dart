import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';

class CustomExpanded extends StatelessWidget {
  const CustomExpanded(
      {Key? key, required this.img, required this.text, required this.onTap})
      : super(key: key);
  final String? img;
 final String? text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.bottomCenter,
          width: SizeConfig.defaultSize * .25,
          height: SizeConfig.defaultSize * 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 2),
              image:
                  DecorationImage(image: AssetImage(img!), fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                top: SizeConfig.defaultSize * 3,
                end: SizeConfig.defaultSize * 1.3,
                start: SizeConfig.defaultSize * .5,
                bottom: SizeConfig.defaultSize * .7),
            child: FittedBox(
              child: Text(
                text!,
                style: TextStyle(
                    color: Colors.black.withOpacity(1),
                    fontSize: SizeConfig.blockSizeVertical * 3,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
