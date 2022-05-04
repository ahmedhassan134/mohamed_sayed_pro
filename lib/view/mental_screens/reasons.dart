import 'package:flutter/material.dart';
import 'package:romio/models/obj/data.dart';
import 'package:romio/view/widgets/stack.dart';

import '../../service/responsive_service.dart';
class Reasons extends StatelessWidget {
 static String id='rea';

  const Reasons({Key? key}) : super(key: key);

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
                  padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.5,start:  SizeConfig.defaultSize *.5,bottom: SizeConfig.defaultSize *1) ,
                  margin:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *1.2,end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1,bottom: SizeConfig.defaultSize *2),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Text(dataTwo[index].domain1.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *3,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text1.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain2.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *3,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text2.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain3.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *3,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text3.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].domain4.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *3,color: Colors.red,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                      Text(dataTwo[index].text4.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold,color: Colors.black45),textDirection: TextDirection.rtl,)

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
