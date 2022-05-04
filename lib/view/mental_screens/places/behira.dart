import 'package:flutter/material.dart';
import 'package:romio/view/widgets/custom_places.dart';

import '../../../service/responsive_service.dart';
import '../../widgets/stack.dart';

class Elbehira extends StatelessWidget {
  const Elbehira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('البحيره'),
      ),
      body: Column(
        children: [
          Stackk(
            img: 'assets/images/places/bhira.jpg',
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 5,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsDirectional.only(    start: SizeConfig.defaultSize * 1,
                  end: SizeConfig.defaultSize * 1,
                  bottom: SizeConfig.defaultSize * 1,
                  top: SizeConfig.defaultSize * 4,),
                child: Column(
                  children: const [
                    CustomPlaces(
                      text1: 'أكاديمية نرعاك لتاهيل ورعاية ذوي الاحتياجات الخاصة ',
                      text2: '  استديو مختار – الشارع الرئيسي أعلي مركز شبراخيت  ',
                      text3: '01009596423',
                      text4: 'مركز شبراخيت ',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
