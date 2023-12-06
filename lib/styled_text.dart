import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //{const StyledText(String text,{super.key}): outputtext =text;
  //String outputtext; }-- one way of doing it, too long

  const StyledText(this.text, {super.key});
  final String text;
  //"this" searches for a class variable with same name given in
  //constructor function and assigns the value it has to that class variable
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 28,
        color: Color.fromARGB(255, 174, 237, 186),
      ),
    );
  }
}
