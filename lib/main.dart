

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:romio/home_page.dart';

import 'package:romio/view/classic_screens/extreme.dart';
import 'package:romio/view/classic_screens/medium.dart';
import 'package:romio/view/classic_screens/simple.dart';
import 'package:romio/view/classic_screens/very_extreme.dart';

import 'package:romio/view/mental_screens/classifiction.dart';
import 'package:romio/view/mental_screens/equilibrium_curve.dart';
import 'package:romio/view/mental_screens/identfiation.dart';
import 'package:romio/view/mental_screens/personalty.dart';
import 'package:romio/view/mental_screens/places.dart';
import 'package:romio/view/mental_screens/properties.dart';
import 'package:romio/view/mental_screens/reasons.dart';
import 'package:romio/view/screens/academic_skills/acadimeic_skills.dart';
import 'package:romio/view/screens/academic_skills/arabic.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/arabic.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/calendar_questions.dart';
import 'package:romio/view/screens/academic_skills/calendar_questions/mathes.dart';
import 'package:romio/view/screens/academic_skills/math.dart';
import 'package:romio/view/screens/drawer/abou_the_app.dart';

import 'package:romio/view/screens/life_skills/bathroom.dart';
import 'package:romio/view/screens/life_skills/clothes.dart';
import 'package:romio/view/screens/life_skills/clothes_tako_off.dart';
import 'package:romio/view/screens/life_skills/clothes_two.dart';
import 'package:romio/view/screens/life_skills/colthes_wearing.dart';
import 'package:romio/view/screens/life_skills/food_eating.dart';
import 'package:romio/view/screens/life_skills/food_eating/food_eating_home_screen.dart';
import 'package:romio/view/screens/life_skills/food_eating/hand_washing.dart';
import 'package:romio/view/screens/life_skills/food_eating/sections.dart';
import 'package:romio/view/screens/life_skills/life_skills.dart';
import 'package:romio/view/screens/life_skills/mens.dart';
import 'package:romio/view/screens/life_skills/women.dart';
import 'package:romio/view/screens/mental_handicap/mental_home.dart';
import 'package:romio/view/screens/tips_and_advice/advice.dart';
import 'package:romio/view/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) {
      runApp(
        const MyApp(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor:  const Color(0xffe7e7e7),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Color(0xffe7e7e7), fontSize: 25)),
      ),
      debugShowCheckedModeBanner: false,

      initialRoute: SplashScreen.id,

      routes: {
        HomePage.id: (context) => const HomePage(),
        MentalHome.id: (context) => const MentalHome(),
        AdviceHome.id: (context) => const AdviceHome(),
        LifeSkills.id: (context) => const LifeSkills(),
        SkillsAcademic.id: (context) => const SkillsAcademic(),
        SplashScreen.id: (context) => const SplashScreen(),
        // FacultyPage.id:(context)=>FacultyPage(),
        // PeoplePage.id:(context)=>PeoplePage(),
        AboutApp.id: (context) => const AboutApp(),
        Identifiation.id: (context) => const Identifiation(),
        Reasons.id: (context) => const Reasons(),
        Pro.id: (context) => const Pro(),
        Classification.id: (context) => const Classification(),
        Simple.id: (context) => const Simple(),
        Medium.id: (context) => const Medium(),
        Extreme.id: (context) => const Extreme(),
        VeryExtreme.id: (context) => const VeryExtreme(),
        Personality.id: (context) => const Personality(),
        EquilibriumCurve.id: (context) => const EquilibriumCurve(),
        Math.id: (context) => const Math(),
        Arabic.id: (context) => const Arabic(),
        //FoodEating.id:(context)=>FoodEating(),
        Bathroom.id: (context) => const Bathroom(),
        Clothes.id: (context) => const Clothes(),
        Mens.id: (context) => const Mens(),
        Women.id: (context) => const Women(),
        ClothesTwo.id: (context) => const ClothesTwo(),
        ClothesWearing.id: (context) => const ClothesWearing(),
        ClothesTakeOff.id: (context) => const ClothesTakeOff(),
        Places.id: (context) => const Places(),
        CalenderQuestion.id: (context) => const CalenderQuestion(),
        CalenderArabic.id: (context) => const CalenderArabic(),
        CalenderMath.id: (context) => const CalenderMath(),
        HandWashing.id: (context) => const HandWashing(),
        ClothesHomeScreen.id: (context) => const ClothesHomeScreen(),
        Sections.id: (context) => const Sections(),
        FoodEatingTwo.id: (context) => const FoodEatingTwo()
      },
    );
  }
}
