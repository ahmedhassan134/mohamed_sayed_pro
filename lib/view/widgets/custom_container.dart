import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
class CustomContainer extends StatelessWidget {
  CustomContainer(this.onTap,this.title, {Key? key}) : super(key: key);
Function()? onTap;
String ? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize*3 , vertical: SizeConfig.defaultSize*1.3 ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .09,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
            child: FittedBox(
              child: Text(
                title!,
                style: TextStyle(color: Colors.white, fontSize:SizeConfig.defaultSize*3 ),
              ),
            )),
      ),
    );
  }
}
