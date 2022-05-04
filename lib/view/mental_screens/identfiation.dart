
import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';

import '../../service/responsive_service.dart';
import '../widgets/stack.dart';
class Identifiation extends StatelessWidget {
static  String id='ide';

  const Identifiation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.5,start:  SizeConfig.defaultSize *.5,bottom: SizeConfig.defaultSize *1) ,
                  margin:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *1.2,end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1,bottom: SizeConfig.defaultSize *2),
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(data[index].domain1.toString(),style:  TextStyle(color: Colors.red,fontSize:  SizeConfig.defaultSize *3,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text
                        (data[index].text1.toString(),style:  TextStyle(fontSize:  SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,)

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
