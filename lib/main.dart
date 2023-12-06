import 'package:flutter/material.dart';
import 'package:rolldice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(173, 7, 180, 223),
            Color.fromARGB(255, 100, 95, 233)),
      ),
    ),
  );
}
