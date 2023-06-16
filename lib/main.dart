import 'package:flutter/material.dart';
// import the gradient container class
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // MaterialApp() calls the constructor
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 149, 187, 23),
        // backgroundColor: Colors.amber,
        body: GradientContainer(
          [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 255, 0, 0),
            Color.fromARGB(255, 38, 0, 255)
          ],
        ),
      ),
    ),
  );
}
// const improves runtime performance of application
// with const data in memory is reused instead of recreated

// scaffold widget: related to screens with background color, and other
// properties
