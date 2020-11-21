import 'package:flutter/material.dart';

void main() => runApp(DartPage());

class DartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[400],
          title: Text('Dart'),
        ),
        body: _menu(context));
  }

  Widget _menu(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _carta(context, 'variables y tipos', 'variablesDart'),
          _carta(context, 'listas', 'variablesDart'),
          _carta(context, 'tuplas', 'variablesDart'),
          _carta(context, 'cadena', 'variablesDart'),
          _carta(context, 'diccionarios', 'variablesDart'),
          _carta(context, 'flujo', 'variablesDart'),
          _carta(context, 'funciones', 'variablesDart'),
          _carta(context, 'clases', 'variablesDart'),
          _carta(context, 'modulos', 'variablesDart'),
          _carta(context, 'extras', 'variablesDart'),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }

  Widget _carta(BuildContext context, String seccion, String ruta) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(top: 15.0),
      color: Colors.blue[900],
      child: ListTile(
        leading: Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        title: Text(
          seccion,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onTap: () {
          //print(seccion);
          Navigator.pushNamed(context, ruta);
        },
      ),
    );
  }
}
