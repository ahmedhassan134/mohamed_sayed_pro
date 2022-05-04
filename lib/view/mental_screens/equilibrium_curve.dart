
import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';


class EquilibriumCurve extends StatelessWidget {
  static String id='equilibrium curve';

  const EquilibriumCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المنحني الاعتدالي'),

      ),
      body: Container(
        margin:  EdgeInsetsDirectional.only(top: SizeConfig.defaultSize *1.2,end: SizeConfig.defaultSize *.5,start: SizeConfig.defaultSize *1,bottom: SizeConfig.defaultSize *2),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)
        ),
        child: Image.asset('assets/images/imagee.jpg',fit: BoxFit.fill,),
      ),
    );
  }
}
