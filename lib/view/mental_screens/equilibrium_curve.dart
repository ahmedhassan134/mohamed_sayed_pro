import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../service/responsive_service.dart';
class EquilibriumCurve extends StatelessWidget {
  static String id='equilibrium curve';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المنحني الاعتدالي'),

      ),
      body: Container(
        margin: const EdgeInsetsDirectional.only(top: 3,end: 4,start: 4,bottom: 10),
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
