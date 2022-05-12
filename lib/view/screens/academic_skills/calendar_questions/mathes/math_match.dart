import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:romio/service/responsive_service.dart';





class MathMatch extends StatefulWidget {
  const MathMatch({Key? key}) : super(key: key);

  @override
  _MathMatchState createState() => _MathMatchState();
}


class _MathMatchState extends State<MathMatch> {
  var a=AudioCache();


  late List<ItemModels> items;
  late List<ItemModels>items2;

  late int score;
  late bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame(){
    gameOver = false;
    score=0;
    items=[
      ItemModels(name: 'One', value: 'One', img: 'assets/onematching.jpg'),
      ItemModels(name: 'Six', value: 'Six', img: 'assets/sixmatching.jpg'),
      ItemModels(name: 'Nine', value: 'Nine', img: 'assets/ninematching.jpg'),
      ItemModels(name: 'Three', value: 'Three', img: 'assets/threematching.jpg'),
      ItemModels(name: 'Four', value: 'Four', img: 'assets/fourmatching.jpg'),
      ItemModels(name: 'Five', value: 'Five', img: 'assets/fivematching.jpg'),
    ];
    items2 = List<ItemModels>.from(items);
    items.shuffle();
    items2.shuffle();
  }


  @override
  Widget build(BuildContext context) {
    if(items.isEmpty) {
      gameOver = true;
    }
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Matching Game'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(SizeConfig.defaultSize *2),
        child: Column(
          children: <Widget>[
            Text.rich(TextSpan(
                children: [
                  const TextSpan(text: "Score: "),
                  TextSpan(text: "$score", style:  TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.defaultSize *3,
                  ))
                ]
            )
            ),
            if(!gameOver)
              Row(
                children: <Widget>[
                  Column(
                      children: items.map((item) {
                        return Container(
                          margin: EdgeInsets.all(SizeConfig.defaultSize *1),
                          child: Draggable<ItemModels>(
                              data: item,
                              childWhenDragging:CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: SizeConfig.defaultSize *4,
                                backgroundImage: AssetImage(item.img),

                              ),
                              feedback: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius:SizeConfig.defaultSize *4,
                                backgroundImage: AssetImage(item.img),

                              ),
                              child: Container(
                                width: SizeConfig.defaultSize *10,
                                height: SizeConfig.defaultSize *8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular( SizeConfig.defaultSize *1),
                                  color: Colors.red,

                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular( SizeConfig.defaultSize *1),
                                  child: Image.asset(item.img,
                                    fit: BoxFit.fill,),
                                ),
                              )
                          ),
                        );


                      }).toList()
                  ),
                  const Spacer(

                  ),
                  Column(
                      children: items2.map((item){
                        return DragTarget<ItemModels>(
                          onAccept: (receivedItem){
                            if(item.value== receivedItem.value){
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                                score+=10;
                                item.accepting =false;
                                a.play('true.wav');

                              });

                            }else{
                              setState(() {
                                score-=5;
                                item.accepting =false;
                                a.play('false.wav');

                              });
                            }
                          },
                          onLeave: (receivedItem){
                            setState(() {
                              item.accepting=false;
                            });
                          },
                          onWillAccept: (receivedItem){
                            setState(() {
                              item.accepting=true;
                            });
                            return true;
                          },
                          builder: (context, acceptedItems,rejectedItem) => Container(
                            color: item.accepting? Colors.red:Colors.teal,
                            width: SizeConfig.defaultSize *13,
                            height:SizeConfig.defaultSize *5,

                            alignment: Alignment.center,
                            margin:  EdgeInsets.all(SizeConfig.defaultSize *2,),
                            child: Text(item.name, style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.defaultSize *2.4),),
                          ),


                        );

                      }).toList()

                  ),
                ],
              ),

            if(gameOver)
              Text(result(), style:  TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize:SizeConfig.defaultSize *2.4
              ),),
            if(gameOver)
              Center(
                child: GestureDetector(
                  // textColor: Colors.white,
                  // color: Colors.pink,

                  child: const Text("New Game"),
                  onTap: ()
                  {
                    initGame();
                    setState(() {

                    });
                  },
                ),
              )

          ],
        ),

      ),
    );

  }
  void ss(String music){
    Timer(const Duration(seconds: 6), (){
      a.play(music);

    });
  }
  String result(){
    if(score>=70){
      ss('success.wav');

      return 'Awesome!';

    }
    else{
      ss('tryAgain.wav');
      return 'play again to get better score';
    }
  }

}
class ItemModels{
  final String name;
  final String value;
  final String img;
  bool accepting;
  ItemModels({required this.name,required this.value ,required this.img,this.accepting=false});
}

