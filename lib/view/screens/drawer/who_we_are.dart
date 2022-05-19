
import 'package:flutter/material.dart';
import 'package:romio/models/obj/who_we_are.dart';

import 'package:url_launcher/url_launcher_string.dart';


import '../../../service/responsive_service.dart';

class AppPresenter extends StatelessWidget {
  const AppPresenter({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مقدمي البرنامج'),
      ),
      body: Stack(
        children: [

          Container(
            margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 1,
                vertical: SizeConfig.defaultSize * 1),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 1,
                vertical: SizeConfig.defaultSize * 2),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .9,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [
                    Colors.tealAccent,
                    Colors.deepPurple
                  ]
              ),
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 2),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Expanded(child: Image.asset('assets/images/bns.png')),
                    CircleAvatar(
                      radius: SizeConfig.defaultSize * 3,
                      backgroundImage: const AssetImage('assets/images/bns.png'),
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize * 1,
                    ),
                     Expanded(
                      child: Text(
                        'كليه علوم ذوي الاحتياجات الخاصه جامعه بني سويف طلاب  (الاعاقه العقليه) ',
                        style: TextStyle(fontSize: SizeConfig.defaultSize * 1.7, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize * 1,
                    ),
                    CircleAvatar(
                      radius: SizeConfig.defaultSize * 3,
                      backgroundImage: const AssetImage('assets/images/bns2.jfif'),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    GestureDetector(
                        onTap: ()async{

                          await  _makePhoneCall('01122719189');
                        },
                        child: Container(
                          margin:    EdgeInsets.all(SizeConfig.defaultSize *1),
                          padding:  EdgeInsets.all(SizeConfig.defaultSize *1), // Border width
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle),
                          child: Stack(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(SizeConfig.defaultSize * 7),
                                  // Image radius
                                  child: Image.asset('assets/images/drawer/who_we_are/mohamed_sayed.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                  top: SizeConfig.defaultSize * 7.5,
                                  left: SizeConfig.defaultSize * 1,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.green,
                                    size: SizeConfig.defaultSize * 4,
                                  ))
                            ],
                          ),
                        )),
                    GestureDetector(
                        onTap: ()async{

                          await  _makePhoneCall('01122719189');
                        },
                        child: Container(
                          margin:   EdgeInsets.all(SizeConfig.defaultSize *1),
    padding:  EdgeInsets.all(SizeConfig.defaultSize *1),  // Border width
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle),
                          child: Stack(
                            children: [
                              ClipOval(
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(SizeConfig.defaultSize * 7),
                                  // Image radius
                                  child: Image.asset('assets/images/drawer/who_we_are/sanaa_ebrahim.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                  top: SizeConfig.defaultSize * 7.5,
                                  left: SizeConfig.defaultSize * 1,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.green,
                                    size: SizeConfig.defaultSize * 4,
                                  ))
                            ],
                          ),
                        )),
                  ],
                ),





                Expanded(
                  child: GridView.builder(
                    itemCount:facultyList.length,
                    // shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),

                    gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: .8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 8,
                      maxCrossAxisExtent: 300,

                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Expanded(

                            child:   ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(SizeConfig.defaultSize * 7),
                                // Image radius
                                child: Image.asset(facultyList[index].img,
                                    fit: BoxFit.fill),
                              ),
                            ),
                            flex: 3,
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * 1,
                          ),

                          Expanded(
                            child: Text(
                              facultyList[index].text,
                              style:  TextStyle(
                                  fontSize: SizeConfig.defaultSize*2, fontWeight: FontWeight.bold),
                            ),
                            flex: 1,
                          ),
                        ],
                      );
                    },
                    // itemCount: facultyList.length,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
    // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
    // such as spaces in the input, which would cause `launch` to fail on some
    // platforms.
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrlString(launchUri.toString());
  }

}