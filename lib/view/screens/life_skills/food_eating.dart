
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/classes/food_eating.dart';
import 'package:romio/models/classes/math.dart';
import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/widgets/floating_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/classes/women.dart';

class FoodEating extends StatelessWidget {
  FoodEating({Key? key}) : super(key: key);
  static String id = 'food';
  AudioCache player = AudioCache(prefix: 'assets/sounds/food_eating/');
  AudioPlayer aud = AudioPlayer();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('تناول الطعام'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/five.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          ListView.builder(
              itemCount:
              foodList.length,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(
                          bottom: SizeConfig.defaultSize * 2,
                          top: SizeConfig.defaultSize * 2,
                          start: SizeConfig.defaultSize *1,
                          end: SizeConfig.defaultSize *1
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(SizeConfig.defaultSize *1,),
                        //color: Colors.red,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(SizeConfig.defaultSize *1,),
                        child: Image.asset(
                          foodList[index].img,
                          height: SizeConfig.defaultSize * 20,
                          width: MediaQuery.of(context).size.width * .75,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: SizeConfig.defaultSize*4,
                      right:SizeConfig.defaultSize*3,
                      child: Padding(
                        padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.6,start:  SizeConfig.defaultSize *1,bottom:SizeConfig.defaultSize *1, ) ,
                        child: IconButton(
                            onPressed: () {
                              player.play(foodList[index].sound);

                            },
                            icon:  Icon(
                              Icons.play_arrow,
                              size: SizeConfig.defaultSize*6,
                              color: Colors.blue,
                            )),
                      ),
                    ),

                  ],
                );
              }),
        ],
      ),
      floatingActionButton: FloatingWidget(
        heroTag: 'food_eating',
        urll: 'https://youtu.be/Ci1Mk9xtHUg',
      )
    );
  }

}
