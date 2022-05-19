import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:romio/models/classes/mens.dart';
import 'package:romio/service/responsive_service.dart';

class Mens extends StatefulWidget {
  const Mens ({Key? key}) : super(key: key);
  static String id = 'math';

  @override
  State<Mens> createState() => _MensState();
}

class _MensState extends State<Mens> {
  final audioPlayer = AudioPlayer(playerId: 'my_unique_playerId');
  @override
  void dispose(){
    audioPlayer.stop();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    AudioCache player = AudioCache(fixedPlayer: audioPlayer,prefix: 'assets/sounds/mens/');

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('رجالي'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [

          ListView.builder(
              itemCount:
              menList.length,
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
                          menList[index].img,
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
                              player.play(menList[index].sound);

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
    );
  }
}
