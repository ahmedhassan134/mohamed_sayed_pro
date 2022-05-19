import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../service/responsive_service.dart';
class NonTextCircularAvatar extends StatefulWidget {
    const NonTextCircularAvatar({Key? key,required this.margeStart,@required this.margeTop,required this.answerM}) : super(key: key);
 final double ? margeTop;
  final double margeStart;
  final String answerM;

  @override
  State<NonTextCircularAvatar> createState() => _NonTextCircularAvatarState();
}

class _NonTextCircularAvatarState extends State<NonTextCircularAvatar> {
   final TextEditingController _controller = TextEditingController();
   var a=AudioCache();

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(start:SizeConfig.defaultSize* .4,top: SizeConfig.defaultSize* .8,end: SizeConfig.defaultSize* .2,bottom: SizeConfig.defaultSize* .8 ),

      margin: EdgeInsetsDirectional.only(start:widget.margeStart,top: widget.margeTop??SizeConfig.defaultSize* 0,end: SizeConfig.defaultSize* 1 ),
      width: SizeConfig.defaultSize* 7,
      height: SizeConfig.defaultSize* 7,
      decoration: const BoxDecoration(

          color: Colors.red,
          shape: BoxShape.circle
      ),

      child: Center(
        child: TextFormField(



          controller: _controller,
           onFieldSubmitted: (answer){
    if (answer.toString().length==1&&answer.toString().contains(widget.answerM)) {
      showAlertDialog(context,'اجابه صحيحه','assets/images/modfy/true_answer.png');
      ss('success.wav');
    }

    else{
      showAlertDialog(context,'اجابه خاطئه','assets/images/modfy/wrong_answer.jpg');
      a.play('false.wav');

    }
          },

            cursorColor: Colors.green,
          style:  TextStyle(color: Colors.green,fontSize: SizeConfig.defaultSize* 3,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
          keyboardType: TextInputType.text,

          decoration:  InputDecoration(

            border: InputBorder.none,
            contentPadding:
            EdgeInsets.only(bottom: SizeConfig.defaultSize*.6),




          ),


        ),
      ),

    );
  }

    showAlertDialog(BuildContext context,String text,String img) {


      // set up the button
      Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () {
          Navigator.pop(context);
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Center(child: Text(text)),
        content: Image.asset(img,),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
   void ss(String music){
     a.play(music);
   }
}
