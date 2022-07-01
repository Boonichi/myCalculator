import 'package:math_expressions/math_expressions.dart';

String Calc(userInput) {
  Parser p = Parser();
  ContextModel cm = ContextModel();
  Expression res = p.parse(userInput);
  return res.evaluate(EvaluationType.REAL, cm).toString();
}
