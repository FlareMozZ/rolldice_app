import 'package:flutter/material.dart';
import 'package:rolldice_app/rolling_dice.dart';
//import 'package:rolldice_app/styled_text.dart';-->commentd as we need dice image not text

const alignStart = Alignment.topLeft;
const alignEnd = Alignment.bottomRight;

//final camn also be used for variables that dont want to be changed but are not
// known at compiling, they get dynamically calculated after compiling like
// user input.

/* class GradientContainer extends StatelessWidget {
  //GradientContainer({key}):super(key: key); is similar as below
  //GradientContainer({super.key});
  const GradientContainer({super.key, required this.colors});
   
   final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: alignStart,
          end: alignEnd,
        ),
      ),
      child: const Center(
        child: StyledText('Hello worldd!'),
      ),
    );
  }
} --->named parameter method, one way of solving. Below used one is positional parameter one*/

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  //GradientContainer({key}):super(key: key); is similar as below
  //GradientContainer({super.key});
  const GradientContainer(this.c1, this.c2, {super.key});

  const GradientContainer.presetone({super.key})
      : c1 = Colors.deepPurple,
        c2 = Colors.indigo; //predefined classparameter for our own class

  final Color c1;
  final Color c2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            c1,
            c2,
          ],
          begin: alignStart,
          end: alignEnd,
        ),
      ),
      child: const Center(
        child: RollingDice(),
        /*StyledText('Hello worldd!'),  --->commented as we need dice image not text*/
      ),
    );
  }
}
