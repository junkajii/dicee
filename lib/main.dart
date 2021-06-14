import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
        ),
        body: DiceePage(),
      ),
    ),
  );
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDices() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onTap: () {
                  rollDices();
                  print('🎲 tap');
                },
              ),
            ),
            SizedBox(
              width: 48,
            ),
            Expanded(
              child: InkWell(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onTap: () {
                  rollDices();
                  print('tap 🎲');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
