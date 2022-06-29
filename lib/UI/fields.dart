import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

Container CalculatorField(userInput, result) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(20)),
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

Container InputField(buttons, userInput, result, NumButtonColor) {
  return Container(
    child: GridView.builder(
      itemCount: buttons.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      primary: false,
      itemBuilder: (BuildContext context, int index) {
        // AC Button
        if (buttons[index] == 'AC') {
          return Button(
            ButtonTapped: () {
              setState(() {
                userInput = '';
                result = '';
              });
            },
            ButtonColor: NumButtonColor,
            ButtonText: buttons[index],
            TextColor: Colors.white,
          );
        }
        // Del Button
        else if (buttons[index] == 'Del') {
          return Button(
            ButtonTapped: () {
              setState(() {
                try {
                  userInput = userInput.substring(0, userInput.length - 1);
                } catch (e) {}
                ;
              });
            },
            ButtonColor: NumButtonColor,
            ButtonText: buttons[index],
            TextColor: Colors.white,
          );
        }
        // equal Button
        else if (buttons[index] == '=') {
          return Button(
            ButtonTapped: () {
              setState(() {
                result = Calc(userInput);
              });
            },
            ButtonColor: NumButtonColor,
            ButtonText: buttons[index],
            TextColor: Colors.white,
          );
        }
        // Other buttons
        else
          return Button(
            ButtonTapped: () {
              setState(() {
                userInput += buttons[index];
              });
            },
            ButtonColor: NumButtonColor,
            ButtonText: buttons[index],
            TextColor: Colors.white,
          );
      },
    ),
  );
}

String Calc(userInput) {
  Parser p = Parser();
  ContextModel cm = ContextModel();
  Expression res = p.parse(userInput);
  return res.evaluate(EvaluationType.REAL, cm).toString();
}
