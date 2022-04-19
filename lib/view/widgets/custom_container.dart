import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  CustomContainer(this.onTap,this.title);
Function()? onTap;
String ? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .09,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
            child: Text(
              title!,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            )),
      ),
    );
  }
}
