import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:romio/view/widgets/custom_stack.dart';
class AdviceHome extends StatefulWidget {
static String id='advice';

  @override
  State<AdviceHome> createState() => _AdviceHomeState();
}

class _AdviceHomeState extends State<AdviceHome> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    )..repeat();
    animation =CurvedAnimation(parent: _controller, curve:Curves.linear );

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
          title: const Text('النصائح والارشادات'),
          centerTitle: true,
        elevation: 0,

        ),


      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            //CustomStack(onTap: null, text: 'النصائح والارشادات', img: 'assets/images/tips_and_advice/1.png'),
             GestureDetector(
               onTap: null,
               child: Container(
                 width: double.infinity,
                 height: MediaQuery.of(context).size.height * .25,
                 decoration: BoxDecoration(
                   color: Colors.deepPurple,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(60),
                     bottomRight: Radius.circular(60),
                   )

                 ),
               ),
             ),
            Positioned(
              top: 90,
              left: 70,
              child: RotationTransition(
                turns:animation,
                child: Image.asset('assets/images/tips_and_advice/1.png',
                  height: 220,
                  width: 230,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
