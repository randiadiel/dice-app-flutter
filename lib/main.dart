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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var LeftDiceNumber = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              print('Left Button Pressed');
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          )),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('Right Button Pressed');
                },
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
