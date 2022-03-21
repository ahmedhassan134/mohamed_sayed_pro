import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/obj/data.dart';
import '../widgets/stack.dart';
class Personality extends StatelessWidget {
  static String id='pro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التشخيص'),
      ),
      body: Column(
        children: [

          Stackk(img:'assets/images/mental_retardation/a5.jpg',pos1: 50,pos2: 50,num1: 200,num2: 300, ),
          const SizedBox(height: 40,),
          Expanded(
            child: ListView.builder(
                itemCount: dataFour.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsetsDirectional.only(top: 10,end: 8,start: 2,bottom: 5),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(dataFour[index].domain1.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text1.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain2.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                       // Text(dataFour[index].text2.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain3.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text3.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain4.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text4.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain5.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text5.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain6.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text6.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain7.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text7.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain8.toString(),style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text8.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
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
