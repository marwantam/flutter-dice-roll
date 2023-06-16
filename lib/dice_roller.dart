import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    print('DICE ROLL: $diceRoll');
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        const SizedBox(height: 10),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 10),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            child: const Text("ROLL DICE"))
      ],
    );
  }
}
