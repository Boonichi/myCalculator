import 'package:flutter/material.dart';
import 'fields.dart';

class HomePage extends StatefulWidget {
  var result = '';
  var userInput = '';
  final List<String> buttons = [
    'AC',
    'Del',
    '+/-',
    '%',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];
  final NumButtonColor = Color.fromARGB(255, 96, 92, 92);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Calculator"),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(
            child: CalculatorField(userInput, result),
          ),
          Expanded(
            flex: 3,
            child: InputField(buttons, userInput, result, NumButtonColor),
          )
        ],
      ),
    );
  }
}
