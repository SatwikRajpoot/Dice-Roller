import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  var a = 2;
  void roll() {
    setState(() {
      a = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.9,
            child: Image.asset(
              'assets/dice-$a.png',
              width: 250,
            ),
          ),
          const SizedBox(height: 40),
          TextButton(
            onPressed: roll,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 27),
            ),
            child: const Text("Roll Dice"),
          )
        ],
      ),
    );
  }
}
