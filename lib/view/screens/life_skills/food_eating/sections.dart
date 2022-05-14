
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:romio/models/classes/food_eating.dart';

import 'package:romio/service/responsive_service.dart';
import 'package:romio/view/widgets/floating_widget.dart';


class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);
  static String id = 'Sections';

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  final audioPlayer = AudioPlayer(playerId: 'my_unique_playerId');
  @override
  void dispose(){
    audioPlayer.stop();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache(fixedPlayer: audioPlayer,prefix: 'assets/sounds/food_eating/');

    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('الادوات'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/four.jpg',
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
        floatingActionButton: Container(
          padding: EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5,),
          margin:EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5, ),

          alignment: Alignment.bottomLeft,
          child:  const FloatingWidget(
            heroTag: 'food_eating',
            urll: 'https://youtu.be/Ci1Mk9xtHUg',
          ),
        )
    );
  }
}
