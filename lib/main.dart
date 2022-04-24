
import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';

import 'package:romio/pageview.dart';
import 'package:romio/view/classic_screens/extreme.dart';
import 'package:romio/view/classic_screens/medium.dart';
import 'package:romio/view/classic_screens/simple.dart';
import 'package:romio/view/classic_screens/very_extreme.dart';

import 'package:romio/view/mental_screens/classifiction.dart';
import 'package:romio/view/mental_screens/equilibrium_curve.dart';
import 'package:romio/view/mental_screens/identfiation.dart';
import 'package:romio/view/mental_screens/personalty.dart';
import 'package:romio/view/mental_screens/properties.dart';
import 'package:romio/view/mental_screens/reasons.dart';
import 'package:romio/view/screens/academic_skills/acadimeic_skills.dart';
import 'package:romio/view/screens/academic_skills/arabic.dart';
import 'package:romio/view/screens/academic_skills/math.dart';
import 'package:romio/view/screens/drawer/abou_the_app.dart';
import 'package:romio/view/screens/drawer/about_the_faculty.dart';
import 'package:romio/view/screens/drawer/who_we_are.dart';
import 'package:romio/view/screens/life_skills/life_skills.dart';
import 'package:romio/view/screens/mental_handicap/mental_home.dart';
import 'package:romio/view/screens/tips_and_advice/advice.dart';
import 'package:romio/view/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs =  await SharedPreferences.getInstance();
  bool ? token=_prefs.getBool("x");
  Widget screen=(token==false || token==null)? const PaageView():SplashScreen();

  runApp(const MyApp());
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences _prefs =  await SharedPreferences.getInstance();
//   bool ? token=_prefs.getBool("x");
//   Widget screen=(token==false|| token==null)?PaageView():HomeScreen();
//
//   runApp(MaterialApp(home: screen,));


 }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      theme: ThemeData(


        brightness: Brightness.light,


        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25
          )



        ),
      ),
      debugShowCheckedModeBanner: false,
     // initialRoute:PaageView.id,
      home: const PaageView(),

      routes: {
        PaageView.id:(context)=>const PaageView(),
        HomePage.id:(context)=>const HomePage(),
        MentalHome.id:(context)=> const MentalHome(),
        AdviceHome.id:(context)=>AdviceHome(),
        LifeSkills.id:(context)=>LifeSkills(),
        SkillsAcademic.id:(context)=>SkillsAcademic(),
        SplashScreen.id:(context)=>SplashScreen(),
        // FacultyPage.id:(context)=>FacultyPage(),
        // PeoplePage.id:(context)=>PeoplePage(),
        AboutApp.id:(context)=>AboutApp(),
        Identifiation.id:(context)=>Identifiation(),
        Reasons.id:(context)=>Reasons(),
        Pro.id:(context)=>Pro(),
        Classification.id:(context)=>Classification(),
        Simple.id:(context)=>Simple(),
        Medium.id:(context)=>const Medium(),
        Extreme.id:(context)=>Extreme(),
        VeryExtreme.id:(context)=>VeryExtreme(),
        Personality.id:(context)=>Personality(),
        EquilibriumCurve.id:(context)=>EquilibriumCurve(),
        Math.id:(context)=>Math(),
        Arabic.id:(context)=>Arabic(),


      },
    );
  }
}
