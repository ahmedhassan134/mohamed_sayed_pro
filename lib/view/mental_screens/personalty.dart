import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/obj/data.dart';
import '../../service/responsive_service.dart';
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

          Stackk(img:'assets/images/mental_retardation/a5.jpg' ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: ListView.builder(
                itemCount: dataFour.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: const EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
                    margin: const EdgeInsetsDirectional.only(top: 10,end: 10,start: 2,bottom: 5),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(dataFour[index].domain1.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text1.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain2.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                       // Text(dataFour[index].text2.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain3.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text3.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain4.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text4.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain5.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text5.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain6.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text6.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain7.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text7.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].domain8.toString(),style: const TextStyle(fontSize: 22,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataFour[index].text8.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
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
