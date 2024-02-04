import 'package:flutter/material.dart';
import 'package:satwik/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 0, 4, 74), Color.fromARGB(255, 29, 53, 141)],
        ),
      ),
    ),
  );
}
