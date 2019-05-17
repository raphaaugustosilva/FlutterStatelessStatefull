import 'package:flutter/material.dart';
import 'package:teste_stateless_statefull/view/principalView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateless X Statefull',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrincipalView(),
    );
  }
}
