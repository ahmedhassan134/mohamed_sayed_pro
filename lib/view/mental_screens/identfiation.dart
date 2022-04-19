
import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';

import '../../service/responsive_service.dart';
import '../widgets/stack.dart';
class Identifiation extends StatelessWidget {
static  String id='ide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التعريف'),),
      body: Column(
        children: [
          Stackk(img:'assets/images/mental_retardation/a1.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,

                itemBuilder: (context,index){
                return Container(
                  padding: const EdgeInsetsDirectional.only(top: 15,end: 8,start: 2,bottom: 5) ,
                  margin: const EdgeInsetsDirectional.only(top: 10,end: 8,start: 2,bottom: 5),
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(data[index].domain1.toString(),style: const TextStyle(color: Colors.red,fontSize: 22,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text
                        (data[index].text1.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,)

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
