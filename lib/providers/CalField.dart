import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../UX/calculate.dart';

class CalFieldProvider extends ChangeNotifier {
  String _userInput = '';
  String _result = '';

  String get userInput => _userInput;
  String get result => _result;

  void ACbutton() {
    _userInput = '';
    _result = '';
    notifyListeners();
  }

  void Delbutton() {
    _userInput = userInput.substring(0, userInput.length - 1);
    notifyListeners();
  }

  void Equalbutton() {
    _result = Calc(userInput);
    notifyListeners();
  }

  void Inputbutton(String input) {
    _userInput += input;
    notifyListeners();
  }
}
