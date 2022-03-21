import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';
import 'package:romio/view/widgets/stack.dart';
class Reasons extends StatelessWidget {
 static String id='rea';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاسباب'),
      ),
      body: Column(
        children: [

          Stackk(img:'assets/images/mental_retardation/a2.jpg',pos1: 50,pos2: 50,num1: 200,num2: 300, ),
          const SizedBox(height: 40,),
          Expanded(
            child: ListView.builder(
              itemCount: dataTwo.length,
                itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsetsDirectional.only(top: 10,end: 4,start: 2,bottom: 5),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Text(dataTwo[index].domain1.toString(),style: TextStyle(fontSize: 20,color: Colors.red),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text1.toString(),style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain2.toString(),style: TextStyle(fontSize: 20,color: Colors.red),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text2.toString(),style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain3.toString(),style: TextStyle(fontSize: 20,color: Colors.red),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text3.toString(),style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain4.toString(),style: TextStyle(fontSize: 20,color: Colors.red),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text4.toString(),style: TextStyle(fontSize: 20),textDirection: TextDirection.rtl,)

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
