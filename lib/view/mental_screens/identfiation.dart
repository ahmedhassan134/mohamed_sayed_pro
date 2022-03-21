import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';

import '../widgets/stack.dart';
class Identifiation extends StatelessWidget {
static  String id='ide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('التعريف'),),
      body: Column(
        children: [
          Stackk(img:'assets/images/mental_retardation/a1.jpg',pos1: 50,pos2: 50,num1: 200,num2: 300, ),
          const SizedBox(height: 40,),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,

                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsetsDirectional.only(top: 10,end: 8,start: 2,bottom: 5),
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(data[index].domain1.toString(),style: TextStyle(color: Colors.red,fontSize: 17,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(data[index].text1.toString(),style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,)

                    ],
                  ),
                );

            }),
          ),
        ],
      ),
    );
  }
}
