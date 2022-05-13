
import 'package:flutter/material.dart';

import '../../models/obj/data.dart';
import '../../service/responsive_service.dart';
import '../widgets/stack.dart';
class   Pro extends StatelessWidget {
static String id='pro';

  const Pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الخصائص'),
      ),
      body: Column(
        children: [

          const Stackk(img:'assets/images/mental_retardation/a3.jpg', ),
          SizedBox(       height: SizeConfig.defaultSize * 5,),
          Expanded(
            child: ListView.builder(
                itemCount: dataThree.length,
                itemBuilder: (context,index){
                  return Container(
                    padding:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *3,end: SizeConfig.defaultSize *.5,start:  SizeConfig.defaultSize *.5,bottom: SizeConfig.defaultSize *1) ,
                    margin:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *1.2,end: SizeConfig.defaultSize *1,start: SizeConfig.defaultSize *1,bottom: SizeConfig.defaultSize *2),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(dataThree[index].domain1.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text1.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain2.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text2.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain3.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text3.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain4.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text4.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain5.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text5.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].domain6.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,color: Colors.blue,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
                        Text(dataThree[index].text6.toString(),style:  TextStyle(fontSize: SizeConfig.defaultSize *2.6,fontWeight: FontWeight.bold),textDirection: TextDirection.rtl,),
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
