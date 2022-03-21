import 'package:flutter/material.dart';
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
          alignment: Alignment.bottomRight,
          width: 400,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(img!),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
            const EdgeInsetsDirectional.only(bottom: 1, end: 5),
            child: Text(
              text!,
              style: TextStyle(
                  color: Colors.black.withOpacity(1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
