
import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/splash_screen_view.dart';
class SplashScreen extends StatelessWidget {
static String id='splash';

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 200,

      imageSrc: "assets/images/8.jpg",
      text: "الاعاقه العقليه",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.grey,
    );

  }
}