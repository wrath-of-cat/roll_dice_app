import 'package:flutter/material.dart';
import 'package:roll_dice_app/roll_dice.dart';

class ContainerGradient extends StatelessWidget {
  const ContainerGradient(this.color1, this.color2, {super.key});
  const ContainerGradient.alt({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.deepPurpleAccent;

  final Color color1;
  final Color color2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: RollDice()),
    );
  }
}
