import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      // change font size to 28 and text color to white
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
