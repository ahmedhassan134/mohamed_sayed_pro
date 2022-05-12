import 'package:flutter/material.dart';



class HandWashing extends StatelessWidget {
  const HandWashing({Key? key}) : super(key: key);

  static String id='HandWashing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('غسل الايدي'),
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
