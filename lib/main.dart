import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Fluttery Dice'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    ));

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: buttonPress,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: buttonPress,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void buttonPress() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
