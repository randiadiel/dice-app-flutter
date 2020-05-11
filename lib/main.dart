import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LeftDiceNumber = 1;
  var RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                LeftDiceNumber -= 1;
              });
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          )),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('Right Button Pressed');
                },
                child: Image.asset('images/dice$RightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
