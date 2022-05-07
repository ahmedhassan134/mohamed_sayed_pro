import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/classes/bathroom.dart';
import 'package:romio/models/classes/math.dart';
import 'package:romio/service/responsive_service.dart';

import '../../widgets/floating_widget.dart';

class Bathroom extends StatelessWidget {
  Bathroom({Key? key}) : super(key: key);
  static String id = 'bathroom';
  AudioCache player = AudioCache(prefix: 'assets/sounds/bathroom/');
  AudioPlayer aud = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('دخول الحمام'),
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
              itemCount: bathList.length,
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
                          bathList[index].img,
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
                              player.play(bathList[index].sound);

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
        padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.6,start:  SizeConfig.defaultSize *3,bottom:SizeConfig.defaultSize *1, ) ,
        alignment: Alignment.bottomLeft,
        child: FloatingWidget(
          heroTag: 'bathroom',
          urll: '  https://youtu.be/PJhi_2lMzLM',
        ),
      ),
    );

  }


}
