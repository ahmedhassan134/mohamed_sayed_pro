
import 'package:flutter/material.dart';
import 'package:romio/home_page.dart';
import 'package:romio/view/screens/drawer/abou_the_app.dart';

import 'package:url_launcher/url_launcher_string.dart';

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
          Image.asset(
            'assets/images/back.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              padding:  EdgeInsetsDirectional.only(start:SizeConfig.defaultSize * .7,end:SizeConfig.defaultSize * .7, ),
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.defaultSize * 5,
                  ),
                  CircleAvatar(
                    radius: SizeConfig.defaultSize * 6,
                    backgroundImage: const AssetImage('assets/images/app_icon.jpg'),// Image radius
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize * 1,
                  ),
                  Text(
                    'الاعاقه العقليه',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 2.2,
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
                        Navigator.pushNamed(context, AboutApp.id);

                      },
                      text: ' نبذة عن التطبيق  '),
                  Container(
                    margin: EdgeInsetsDirectional.only(start: SizeConfig.defaultSize*.2,end: SizeConfig.defaultSize*.6 ),
                    child: Row(
                      children: [
                        Expanded(

                          child: IconButton(
                            onPressed: () async {
                              final Uri params = Uri(
                                scheme: 'mailto',
                                path: 'Mohamedshahalb1999@gmail.com',
                                query:
                                'subject=App Feedback&body=App Version 3.23', //add subject and body here
                              );

                              var url = params.toString();
                              if (await canLaunchUrlString(url)) {
                                await launchUrlString(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: Icon(
                              Icons.outgoing_mail,
                              size: SizeConfig.defaultSize * 3.5,
                            ),),
                          flex: 1,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () async {
                              final Uri params = Uri(
                                scheme: 'mailto',
                                path: 'Mohamedshahalb1999@gmail.com',
                                query:
                                'subject=App Feedback&body=App Version 3.23', //add subject and body here
                              );

                              var url = params.toString();
                              if (await canLaunchUrlString(url)) {
                                await launchUrlString(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text('غرفة التواصل ',
                                style: TextStyle(
                                    fontSize: SizeConfig.defaultSize * 2.4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          flex: 3,
                        )
                      ],
                    ),
                  ),
                  CustomGesterDetectorDrawer(
                      iconData: Icons.share,
                      onTap: () {},
                      text: ' لينك المشاركه  '),

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

