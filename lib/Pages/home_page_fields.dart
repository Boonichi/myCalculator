import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/CalField.dart';
import '../UI/buttons.dart';

class CalculatorField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalFieldProvider>(builder: (context, Calfield, _) {
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
                Calfield.userInput,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              child: Text(Calfield.result,
                  style: TextStyle(fontSize: 18, color: Colors.black)),
            ),
          ],
        ),
      );
    });
  }
}

class InputField extends StatelessWidget {
  final NumButtonColor = Color.fromARGB(255, 96, 92, 92);
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
  @override
  Widget build(BuildContext context) {
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
              ButtonTapped: () =>
                  Provider.of<CalFieldProvider>(context, listen: false)
                      .ACbutton(),
              ButtonColor: NumButtonColor,
              ButtonText: buttons[index],
              TextColor: Colors.white,
            );
          }
          // Del Button
          else if (buttons[index] == 'Del') {
            return Button(
              ButtonTapped: () =>
                  Provider.of<CalFieldProvider>(context, listen: false)
                      .Delbutton(),
              ButtonColor: NumButtonColor,
              ButtonText: buttons[index],
              TextColor: Colors.white,
            );
          }
          // equal Button
          else if (buttons[index] == '=') {
            return Button(
              ButtonTapped: () =>
                  Provider.of<CalFieldProvider>(context, listen: false)
                      .Equalbutton(),
              ButtonColor: NumButtonColor,
              ButtonText: buttons[index],
              TextColor: Colors.white,
            );
          }
          // Other buttons
          else
            return Button(
              ButtonTapped: () =>
                  Provider.of<CalFieldProvider>(context, listen: false)
                      .Inputbutton(buttons[index]),
              ButtonColor: NumButtonColor,
              ButtonText: buttons[index],
              TextColor: Colors.white,
            );
        },
      ),
    );
  }
}
