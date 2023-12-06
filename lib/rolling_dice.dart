import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random(); //globally available data container

class RollingDice extends StatefulWidget {
  const RollingDice({super.key});
  @override
  State<RollingDice> createState() {
    return _RollingDiceState();
  }
}

class _RollingDiceState extends State<RollingDice> {
  //var activeImg = 'assets/images/dice-1.png'; --->initial dice 1 to dice 3 toggle
  var currentDiceNum = 5;

  void dicerole() {
    setState(() {
      // activeImg = 'assets/images/dice-3.png'; --->initial dice 1 to dice 3 toggle on click test
      //activeImg = 'assets/images/dice-$dicenum.png'; --->initial dice 1 to dice 3 toggle on click test

      //currentDiceNum = Random().nextInt(6) + 1; --->Random regenerates every time which is a redundant repete-delete sequence
      //in memory, memory wont be wasted as its deleting for every click too, but is just inefficient

      currentDiceNum = randomizer.nextInt(6) + 1;
    });
    //print('changing img...'); -->for debug helping
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNum.png',
          //activeImg,  --->initial dice 1 to dice 3 toggle on click test
          width: 200,
        ),
        //const SizedBox(height: 20,)--->alternative to padding, adds empty fixed size
        // box in the column as a way to induce gap
        TextButton(
          onPressed: dicerole,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
