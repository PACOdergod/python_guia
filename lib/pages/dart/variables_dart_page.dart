import 'package:flutter/material.dart';

void main() => runApp(VariablesDartPage());

class VariablesDartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Variables')),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [_variables(), _tipos(context)],
        ),
      ),
    );
  }

  Widget _variables() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('Como se declara una variable')],
    );
  }

  Widget _tipos(BuildContext context) {
    double anchoPantalla = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: anchoPantalla * .9,
      color: Colors.amberAccent,
      child: Column(
        children: [
          Text(
            'Dart tiene 5 tipos de datos:',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
