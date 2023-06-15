import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

// final: the value cannot be changed after assignment.
//
// const: constant variables provides extra information compared to final
// it means that the value is a compile time constant.
// If the value came from a function, this would not be the case

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// center widget: used to center widgets
// we build widget trees to stack multiple properties
class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  // constructor function
  // key argument needs to be forwarded to statelessWidget (what does this mean?)
  // super calls constructor of parent class

  // the following two lines do the same thing
  //const GradientContainer({key}): super(key: key);
  const GradientContainer(this.colors, {super.key});

  @override // overrides the method expected by StatelessWidget
  Widget build(context) {
    // we must return a Widget because this is the return value
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            // makes the color gradient
            colors: colors,
            // make the gradient go from the top left to the bottom right
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: StyledText('Hi there World!!!'),
      ),
    );
  }
}
