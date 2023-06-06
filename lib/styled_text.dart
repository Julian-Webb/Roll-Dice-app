import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      '32',
      // change font size to 28 and text color to white
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
