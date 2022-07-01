import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/CalField.dart';
import 'home_page_fields.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ListenableProvider(create: (context) => CalFieldProvider())
        ],
        child: Scaffold(
          appBar: new AppBar(
            title: new Text("My Calculator"),
          ),
          backgroundColor: Colors.black,
          body: Column(children: <Widget>[
            Expanded(
              child: CalculatorField(),
            ),
            Expanded(
              flex: 3,
              child: InputField(),
            ),
          ]),
        ));
  }
}
