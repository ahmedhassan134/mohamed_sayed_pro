import 'package:flutter/material.dart';


import 'mens.dart';
class ClothesWearing extends StatelessWidget {
  const ClothesWearing({Key? key}) : super(key: key);

  static String id='clotheswearing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ارتداء الملابس'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/four.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

        ],
      ),

    );
  }
}
