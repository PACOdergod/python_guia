import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Lenguajes'),
      ),
      body: Column(
        children: [
          _carta(context, 'python', 'python', Colors.lightBlue[700]),
          _carta(context, 'dart', 'dart', Colors.cyan[400]),
        ],
      ),
    );
  }

  Widget _carta(
      BuildContext context, String seccion, String ruta, Color color) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(top: 15.0),
      color: color,
      child: ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text(seccion),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          //print(seccion);
          Navigator.pushNamed(context, ruta);
        },
      ),
    );
  }
}
