import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:romio/service/responsive_service.dart';

import 'package:romio/view/screens/academic_skills/acadimeic_skills.dart';

import 'package:romio/view/screens/life_skills/life_skills.dart';
import 'package:romio/view/screens/mental_handicap/mental_home.dart';
import 'package:romio/view/screens/tips_and_advice/advice.dart';
import 'package:romio/view/widgets/custom_expanded.dart';

import 'package:romio/view/widgets/drawer_widget.dart';

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
        childDecoration:  BoxDecoration(
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 0.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize *1)),
        ),
        drawer:  const DrawerWidget(),
        child: Scaffold(
            // backgroundColor: Colors.deepPurple,
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
              title: Text(
                'الاعاقه العقليه',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.defaultSize * 3,
                ),
              ),
              centerTitle: true,

            ),
            body: Stack(
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.defaultSize * 1.2,
                    vertical: SizeConfig.defaultSize * 1.2,
                  ),
                  child: SingleChildScrollView(
                    child: AnimationLimiter(
                      child: Column(
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 500),
                          childAnimationBuilder: (widget) => SlideAnimation(
                            verticalOffset: 200,
                            child: FadeInAnimation(
                              child: widget,
                            ),
                          ),
                          children: [
                            SizedBox(height:SizeConfig.defaultSize *1 ,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                CustomExpanded(
                                  img: 'assets/images/modfy/advice_modf.jpg',
                                  text: 'النصائح والارشادات',
                                  onTap: () {
                                    Navigator.pushNamed(context, AdviceHome.id);
                                  },
                                ),
                                SizedBox(
                                  width: SizeConfig.defaultSize * 1,
                                ),
                                CustomExpanded(
                                  img:
                                      'assets/images/mental_retardation/a1.jpg',
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
                                  img: 'assets/images/modfy/acadmic_modf.jpg',
                                  text: 'مهارات اكاديميه',
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, SkillsAcademic.id);
                                  },
                                ),
                                SizedBox(
                                  width: SizeConfig.defaultSize * 1,
                                ),
                                CustomExpanded(
                                  img: 'assets/images/modfy/life_skills_modf.jpg',
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
                ),
              ],
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
