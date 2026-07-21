import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _leftDice = 1;
  int _rightDice = 4;

  void _rollDice() {
    setState(() {
      _leftDice = Random().nextInt(6) + 1;
      _rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Hello Dice'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/dice$_leftDice.png', width: 100),
                const SizedBox(width: 20),
                Image.asset('assets/dice$_rightDice.png', width: 100),
              ],
            ),
            const SizedBox(height: 80),
            TextButton.icon(
              onPressed: _rollDice,
              icon: const Icon(Icons.casino, color: Colors.white),
              label: const Text(
                'Roll',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}