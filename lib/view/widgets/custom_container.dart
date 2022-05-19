import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';
class CustomContainer extends StatelessWidget {
  const CustomContainer(this.onTap,this.title, {Key? key}) : super(key: key);
final Function()? onTap;
final String ? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize*3 , vertical: SizeConfig.defaultSize*1.3 ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .09,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue),
        child: Center(
            child: FittedBox(
              child: TextButton(
                onPressed: onTap,
                child: Text(
                  title!,
                  style: TextStyle(color: Colors.white, fontSize:SizeConfig.defaultSize*3 ),
                ),
              ),
            )),
      ),
    );
  }
}
