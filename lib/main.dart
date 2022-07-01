import 'package:flutter/material.dart';
import 'UI/colors.dart';
import 'Pages/home_page.dart';
import 'package:provider/provider.dart';

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
      initialRoute: '/',
      routes: {'/': (context) => HomePage()},
      debugShowCheckedModeBanner: false,
    );
  }
}
