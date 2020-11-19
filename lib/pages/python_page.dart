import 'package:flutter/material.dart';

void main() => runApp(PythonPage());

class PythonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Python'),
        ),
        body: _menu(context));
  }

  Widget _menu(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _carta(context, 'variables', 'variablesPython'),
          _carta(context, 'tipos', 'variablesPython'),
          _carta(context, 'listas', 'variablesPython'),
          _carta(context, 'tuplas', 'variablesPython'),
          _carta(context, 'cadena', 'variablesPython'),
          _carta(context, 'diccionarios', 'variablesPython'),
          _carta(context, 'flujo', 'variablesPython'),
          _carta(context, 'funciones', 'variablesPython'),
          _carta(context, 'clases', 'variablesPython'),
          _carta(context, 'modulos', 'variablesPython'),
          _carta(context, 'extras', 'variablesPython'),
        ],
      ),
    );
  }

  Widget _carta(BuildContext context, String seccion, String ruta) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.only(top: 15.0),
      color: Colors.yellow[600],
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
