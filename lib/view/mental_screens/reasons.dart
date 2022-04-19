import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';
import 'package:romio/view/widgets/stack.dart';

import '../../service/responsive_service.dart';
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

          Stackk(img:'assets/images/mental_retardation/a2.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: ListView.builder(
              itemCount: dataTwo.length,
                itemBuilder: (context,index){
                return Container(
                  padding: const EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
                  margin: const EdgeInsetsDirectional.only(top: 10,end: 12,start: 2,bottom: 5),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Text(dataTwo[index].domain1.toString(),style: const TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text1.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain2.toString(),style: const TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text2.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain3.toString(),style: const TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text3.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain4.toString(),style: const TextStyle(fontSize: 22,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text4.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,)

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
