import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/classes/math.dart';
import 'package:romio/service/responsive_service.dart';

import '../../../models/classes/arabic.dart';

class Arabic extends StatefulWidget {
  Arabic({Key? key}) : super(key: key);
  static String id = 'Arabic';

  @override
  State<Arabic> createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  AudioCache player = AudioCache(prefix: 'assets/sounds/alphabetic/');

  AudioPlayer aud = new AudioPlayer();
  @override
  Future<void>dispose()async  {
    super.dispose();
  await aud.stop();
    //change here


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('عربي'),
      ),
      body: ListView.builder(
          itemCount: arabicList.length,
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
                      arabicList[index].img,
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
                        setState(() {
                          player.play(arabicList[index].sound);
                        });


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
