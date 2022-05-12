import 'package:flutter/material.dart';



class FoodEatingTwo extends StatelessWidget {
  const FoodEatingTwo({Key? key}) : super(key: key);

  static String id='FoodEatingTwo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تناول الطعام'),
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
