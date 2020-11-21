import 'package:flutter/material.dart';
import 'package:python_guia/pages/dart/variables_dart_page.dart';
import 'package:python_guia/pages/dart_page.dart';
import 'package:python_guia/pages/home_page.dart';
import 'package:python_guia/pages/python/varibles_python_page.dart';
import 'package:python_guia/pages/python_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'python': (BuildContext context) => PythonPage(),
        'variablesPython': (BuildContext context) => VariablesPythonPage(),
        'dart': (BuildContext context) => DartPage(),
        'variablesDart': (BuildContext context) => VariablesDartPage(),
      },
    );
  }
}
