import 'package:flutter/material.dart';
import 'package:python_guia/pages/python/varibles_python_page.dart';
import 'package:python_guia/pages/python_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Material App',
      initialRoute: 'python',
      routes: {
        'python': (BuildContext context) => PythonPage(),
        'variablesPython': (BuildContext context) => VariablesPythonPage(),
      },
    );
  }
}
