import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDiceNum = 1;
  void rollDice() {
    var diceNum = randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceNum = diceNum;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNum.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ],
    );
  }
}
