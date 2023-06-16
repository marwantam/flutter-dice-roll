import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 0, 75, 72),
          Color.fromARGB(255, 0, 127, 123),
          Color.fromARGB(255, 0, 203, 196)
        ]),
      ),
    ),
  );
}
