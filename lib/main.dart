import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      // MaterialApp() calls the constructor
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 149, 187, 23),
        // backgroundColor: Colors.amber,
        body: GradientContainer(),
      ),
    ),
  );
}
// const improves runtime performance of application
// with const data in memory is reused instead of recreated

// scaffold widget: related to screens with background color, and other
// properties
// center widget: used to center widgets
// we build widget trees to stack multiple properties

class GradientContainer extends StatelessWidget {
  // constructor function
  // key argument needs to be forwarded to statelessWidget (what does this mean?)
  // super calls constructor of parent class

  // the following two lines do the same thing
  //const GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});

  @override // overrides the method expected by StatelessWidget
  Widget build(context) {
    // we must return a Widget because this is the return value
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            // makes the color gradient
            colors: [
              Colors.blue,
              Color.fromARGB(255, 181, 134, 63),
            ],
            // make the gradient go from the top left to the bottom right
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          '31',
          // change font size to 28 and text color to white
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
