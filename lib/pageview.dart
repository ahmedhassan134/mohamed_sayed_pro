import 'dart:async';

import 'package:flutter/material.dart';
import 'package:romio/view/splash_screen.dart';
import 'package:romio/view/widgets/indicator.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/obj/page_builder_ob.dart';



class PaageView extends StatefulWidget {
  const PaageView({Key? key}) : super(key: key);

  @override
  _PaageViewState createState() => _PaageViewState();
}

class _PaageViewState extends State<PaageView> {
  int _currentIndex=0;
  final PageController _controller=PageController();

  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (_){
      if(_currentIndex<3)
      {
        _currentIndex++;
        _controller.animateToPage(_currentIndex, duration:Duration(milliseconds: 300), curve: Curves.easeIn);
      }


    }
    );

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _controller,
              onPageChanged: (val){
                setState(() {
                  _currentIndex=val;
                  // if(_currentIndex==3)
                  //   {
                  //     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  //       return HomeScreen();
                  //
                  //     }
                  //     ),
                  // );}
                });

              },
              itemCount: myData.length,
              itemBuilder: (BuildContext context, index) {
                return Container(

                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage("${myData[index].image}"))),

                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(top: 15,start: 80),
                    child: Text(
                      "${myData[index].title}",
                      style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
          Align(
              alignment: Alignment(0,.7),

              child: Indicator(_currentIndex)),
          Align(
            alignment: Alignment(0.0, 0.9),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () async {
                  SharedPreferences _prefs =  await SharedPreferences.getInstance();
                  _prefs.setBool("x", true);

                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return SplashScreen();

                  }
                  )
                  );
                },
                color: Colors.pink,
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}