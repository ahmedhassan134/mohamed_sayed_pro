import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';
import 'package:romio/models/classes/clasic2.dart';
import 'package:romio/pageview.dart';
import 'package:romio/view/classic_screens/extreme.dart';
import 'package:romio/view/classic_screens/medium.dart';
import 'package:romio/view/classic_screens/simple.dart';
import 'package:romio/view/classic_screens/very_extreme.dart';

import 'package:romio/view/mental_screens/classifiction.dart';
import 'package:romio/view/mental_screens/identfiation.dart';
import 'package:romio/view/mental_screens/personalty.dart';
import 'package:romio/view/mental_screens/properties.dart';
import 'package:romio/view/mental_screens/reasons.dart';
import 'package:romio/view/screens/academic_skills/acadimeic_skills.dart';
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
  Widget screen=(token==false|| token==null)?PaageView():SplashScreen();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      theme: ThemeData(


        brightness: Brightness.light,


        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25
          )



        ),
      ),
      debugShowCheckedModeBanner: false,
     initialRoute:SplashScreen.id,

      routes: {
        HomePage.id:(context)=>HomePage(),
        MentalHome.id:(context)=> MentalHome(),
        AdviceHome.id:(context)=>AdviceHome(),
        LifeSkills.id:(context)=>LifeSkills(),
        SkillsAcademic.id:(context)=>SkillsAcademic(),
        SplashScreen.id:(context)=>SplashScreen(),
        FacultyPage.id:(context)=>FacultyPage(),
        PeoplePage.id:(context)=>PeoplePage(),
        AboutApp.id:(context)=>AboutApp(),
        Identifiation.id:(context)=>Identifiation(),
        Reasons.id:(context)=>Reasons(),
        Properties.id:(context)=>Properties(),
       Classification.id:(context)=>Classification(),
        Simple.id:(context)=>Simple(),
        Medium.id:(context)=>Medium(),
        Extreme.id:(context)=>Extreme(),
        VeryExtreme.id:(context)=>VeryExtreme(),
        Personality.id:(context)=>Personality()


      },
    );
  }
}
