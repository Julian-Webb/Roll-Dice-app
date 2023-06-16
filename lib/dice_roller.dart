import 'package:flutter/material.dart';
import 'dart:math';

final Random random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore before class name means the class is private (can only be used in
// this file)
class _DiceRollerState extends State<DiceRoller> {
  int dieNumber = 6;

  void rollDice() {
    // in setState we make any changes that affect the UI. It will reexecute the
    // build code.
    setState(
      () {
        // generate number from 1 to 6
        dieNumber = random.nextInt(6) + 1;
      },
    );
  }

  // the build method the desribes the part of the USER INTERFACE represented by
  // this widget. It may even be called in every frame
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$dieNumber.png', width: 200),
        const SizedBox(height: 20), // adds empty space between dice and button
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(10),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 255, 209, 59),
            textStyle: const TextStyle(fontSize: 18),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
