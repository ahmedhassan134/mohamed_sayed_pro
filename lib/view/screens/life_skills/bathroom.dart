import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/classes/bathroom.dart';

import 'package:romio/service/responsive_service.dart';

import '../../widgets/floating_widget.dart';

class Bathroom extends StatefulWidget {
  const Bathroom({Key? key}) : super(key: key);

  static String id = 'bathroom';

  @override
  State<Bathroom> createState() => _BathroomState();
}

class _BathroomState extends State<Bathroom> {
  final audioPlayer = AudioPlayer(playerId: 'my_unique_playerId');
  @override
  void dispose(){
    audioPlayer.stop();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {

    AudioCache player = AudioCache( fixedPlayer: audioPlayer,prefix: 'assets/sounds/bathroom/');
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('استخدام المرحاض '),
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
        alignment: Alignment.bottomLeft,
        padding: EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5,),
        margin:EdgeInsetsDirectional.only(start: SizeConfig.defaultSize *2,end: SizeConfig.defaultSize *.5,bottom:SizeConfig.defaultSize *.5, ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [

             const FloatingWidget(
              heroTag: 'one',
              urll: 'https://youtu.be/z_mutuCfO5o',
            ),
            SizedBox(height: SizeConfig.defaultSize *.9,),
            const FloatingWidget(
              heroTag: 'two',
              urll: 'https://youtu.be/PJhi_2lMzLM',
            ),
          ],
        ),
      ),
    );

  }
}
