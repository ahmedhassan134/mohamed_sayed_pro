



import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/service/responsive_service.dart';


import 'package:romio/view/screens/academic_skills/acadimeic_skills.dart';
import 'package:romio/view/screens/drawer/abou_the_app.dart';
import 'package:romio/view/screens/drawer/about_the_faculty.dart';
import 'package:romio/view/screens/drawer/who_we_are.dart';
import 'package:romio/view/screens/life_skills/life_skills.dart';
import 'package:romio/view/screens/mental_handicap/mental_home.dart';
import 'package:romio/view/screens/tips_and_advice/advice.dart';
import 'package:romio/view/widgets/custom_expanded.dart';
import 'package:romio/view/widgets/custom_gesterdetector.dart';


class HomePage extends StatefulWidget {
  static String id = 'homepage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AdvancedDrawer(

       backdropColor: Colors.blueAccent,
        controller: _advancedDrawerController,
        animationCurve: Curves.decelerate,
        animationDuration: const Duration(milliseconds: 300),
    animateChildDecoration: true,
    rtlOpening: false,
    // openScale: 1.0,
    disabledGestures: false,
    childDecoration: const BoxDecoration(
    // NOTICE: Uncomment if you want to add shadow behind the page.
    // Keep in mind that it may cause animation jerks.
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black12,
        blurRadius: 0.0,
      ),
    ],
   borderRadius: BorderRadius.all(Radius.circular(16)),
    ),


      drawer: SafeArea(
        child: Container(

          padding: const EdgeInsetsDirectional.only(start: 10),


          alignment: Alignment.topLeft,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),

              //  CircleAvatar(
              //   radius:,
              //   backgroundImage: AssetImage('assets/images/8.jpg'),
              // ),
              const CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: AssetImage(
                'assets/images/8.jpg',

                ),
              ),

              const SizedBox(height: 7,),
              const Text('الاعاقه العقليه',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
              const SizedBox(height: 50,),
              CustomGesterDetector(
                iconData: Icons.home,

                  onTap: (){
                Navigator.pushNamed(context, HomePage.id);


              }, text: 'الصفحه الرئيسيه'),
              CustomGesterDetector(
                iconData: Icons.school_outlined,

                  onTap: (){
                Navigator.pushNamed(context, FacultyPage.id);


              }, text: 'عن الكليه'),
              CustomGesterDetector(
                iconData: Icons.people,
                  onTap: (){

                Navigator.pushNamed(context, PeoplePage.id);


              }, text: 'من نحن ؟'),
              CustomGesterDetector(
                iconData: Icons.app_blocking,
                  onTap: (){
                Navigator.pushNamed(context, AboutApp.id);


              }, text: 'عن التطبيق '),
              CustomGesterDetector(
                  iconData: Icons.contact_mail_rounded,
                  onTap: null, text: 'kk',),

            ],
          ),

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          title: const Text(
            'الاعاقه العقليه',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontFamily: 'Dancing Script'),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.deepPurpleAccent,
              Colors.pink,
              Colors.deepPurpleAccent,
            ])),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: SingleChildScrollView(
      child: AnimationLimiter(
      child: Column(
            children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 1700),
      childAnimationBuilder: (widget) => SlideAnimation(
       verticalOffset: 200,
          child: FadeInAnimation(
            child: widget,
          ),
      ),
      children:[


          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              CustomExpanded(
                img: 'assets/images/tips_and_advice/1.png',
                text: 'النصائح والارشادات',
                onTap: () {
                  Navigator.pushNamed(context, AdviceHome.id);
                },
              ),
               SizedBox(
                width:   SizeConfig.defaultSize * 1,

              ),
              CustomExpanded
                (
                img: 'assets/images/mental_retardation/a1.jpg',
                text: ' الاعاقه العقليه',
                onTap: () {
                  Navigator.pushNamed(context, MentalHome.id);
                },
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 1,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomExpanded(

                img: 'assets/images/academic_skills/d1.jfif',
                text: 'مهارات اكاديميه',
                onTap: () {
                  Navigator.pushNamed(context, SkillsAcademic.id);
                },
              ),
           SizedBox(
                width:   SizeConfig.defaultSize * 1,
              ),
              CustomExpanded
                (
                img: 'assets/images/life_skills/c1.png',
                text: 'مهارات حياتيه',
                onTap: () {
                  Navigator.pushNamed(context, LifeSkills.id);
                },
              ),
            ],
          ),

    ],
    ),
    ),
    ),

    ),
        )));
  }
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
  // _launchURL() async {
  //   const url = 'https://flutter.io';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

}
