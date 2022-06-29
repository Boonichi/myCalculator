import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String ButtonText;
  final ButtonColor;
  final TextColor;
  final ButtonTapped;

  Button(
      {required this.ButtonText,
      this.ButtonColor,
      this.TextColor,
      this.ButtonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ButtonTapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
                color: ButtonColor,
                child: Center(
                    child: Text(
                  ButtonText,
                  style: TextStyle(
                    color: TextColor,
                    fontSize: 25,
                  ),
                )))),
      ),
    );
  }
}
