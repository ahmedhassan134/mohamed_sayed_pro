import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../service/responsive_service.dart';
import '../screens/drawer/who_we_are.dart';
import 'custom_column_drawer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          // Image.asset(
          //   'assets/images/three.jpg',
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsetsDirectional.only(start: 10),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.defaultSize * 5,
                  ),
                  const CircleAvatar(
                    radius: 48, // Image radius
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize * 1,
                  ),
                  const Text(
                    'دليلك في التخاطب',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize * 5,
                  ),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.home,
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const HomePage();
                            }));
                      },
                      text: 'الصفحه الرئيسيه'),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.school_outlined,
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (BuildContext context) {
                        //       return const AboutTheFaculty();
                        //     }));
                      },
                      text: ' نبذة عن الكلية '),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.people,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return const AppPresenter();
                            }));
                      },
                      text: 'مقدمي البرنامج '),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.app_blocking,
                      onTap: () {

                      },
                      text: ' نبذة عن التطبيق  '),
                  Row(
                    children: [
                      Expanded(

                        child: IconButton(
                          onPressed: () async {
                            final Uri params = Uri(
                              scheme: 'mailto',
                              path: 'aahmed.hhasn@gmail.com',
                              query:
                              'subject=App Feedback&body=App Version 3.23', //add subject and body here
                            );

                            var url = params.toString();
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          icon: Icon(
                            Icons.outgoing_mail,
                            size: SizeConfig.defaultSize * 4,
                          ),),
                        flex: 1,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () async {
                            final Uri params = Uri(
                              scheme: 'mailto',
                              path: 'Emandiab048@gmail.com',
                              query:
                              'subject=App Feedback&body=App Version 3.23', //add subject and body here
                            );

                            var url = params.toString();
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text('غرفة التواصل ',
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize * 3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        flex: 3,
                      )
                    ],
                  ),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.share,
                      onTap: () {},
                      text: ' لينك المشاركه  '),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.app_blocking,
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (BuildContext context) {
                        //       return const SourcesAndReferences1();
                        //     }));
                      },
                      text: '  المصادر والمراجع '),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.app_blocking,
                      onTap: () {},
                      text: ' التقييم  '),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}