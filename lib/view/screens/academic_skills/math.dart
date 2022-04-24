import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/classes/math.dart';
import 'package:romio/service/responsive_service.dart';

class Math extends StatelessWidget {
  Math({Key? key}) : super(key: key);
  static String id = 'math';
  AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
  AudioPlayer aud = new AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('حساب'),
      ),
      body: ListView.builder(
          itemCount: mathList.length,
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
                    borderRadius: BorderRadius.circular(8),
                    //color: Colors.red,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      mathList[index].img,
                      height: SizeConfig.defaultSize * 20,
                      width: MediaQuery.of(context).size.width * .75,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: SizeConfig.defaultSize*4,
                  right:SizeConfig.defaultSize*3,
                  child: IconButton(
                      onPressed: () {
                     player.play(mathList[index].sound);

                      },
                      icon:  Icon(
                        Icons.play_arrow,
                        size: SizeConfig.defaultSize*6,
                        color: Colors.blue,
                      )),
                ),

              ],
            );
          }),
    );
  }

}
