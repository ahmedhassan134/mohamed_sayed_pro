
import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
static String id='splashh';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SplashScreenView(
      navigateRoute: const HomePage(),
      duration: 4000,
      imageSize: 200,

      imageSrc: "assets/images/life_skills/c1.png",
      text: "الاعاقه العقليه",
      textType: TextType.ColorizeAnimationText,
      textStyle:  TextStyle(
        fontSize: SizeConfig.defaultSize* 4,
      ),
      colors: const [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.grey,
    );

  }
}
