import 'package:flutter/material.dart';
import 'package:satwik/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});
  final List<Color> color;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
