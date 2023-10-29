import 'dart:math';

import 'package:flutter/material.dart';

final Random random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String activeImage = 'images/dice-1.png';

  rollDice() {
    setState(() {
      int num = random.nextInt(10000);
      num = num % 6 + 1;
      activeImage = "images/dice-$num.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 90,
          height: 90,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.yellow, backgroundColor: Colors.green),
          child: const Text("Roll"),
        ),
      ],
    );
  }
}
