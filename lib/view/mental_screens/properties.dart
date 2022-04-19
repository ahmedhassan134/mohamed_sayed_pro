import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/obj/data.dart';
import '../../service/responsive_service.dart';
import '../widgets/stack.dart';
class   Pro extends StatelessWidget {
static String id='pro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الخصائص'),
      ),
      body: Column(
        children: [

          Stackk(img:'assets/images/mental_retardation/a3.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: ListView.builder(
                itemCount: dataThree.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: const EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
                    margin: const EdgeInsetsDirectional.only(top: 10,end: 10,start: 2,bottom: 5),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(dataThree[index].domain1.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text1.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain2.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text2.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain3.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text3.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain4.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text4.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain5.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text5.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain6.toString(),style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text6.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
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
