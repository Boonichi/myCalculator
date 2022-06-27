import 'package:flutter/material.dart';
import 'colors.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';
//import 'button.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myCal',
      theme: ThemeData(
        primarySwatch: CompanyColors.black,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];
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
            child: CalculatorField(),
          ),
          Expanded(
            flex: 3,
            child: InputField(),
          )
        ],
      ),
    );
  }
}

Container CalculatorField() {
  var result = '';
  var userInput = '';
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(0.5)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            userInput,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.centerRight,
          child:
              Text(result, style: TextStyle(fontSize: 18, color: Colors.black)),
        ),
      ],
    ),
  );
}

Container InputField() {
  return Container();
}
