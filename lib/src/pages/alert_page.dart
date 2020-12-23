import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Mostrar Texto'),
            color: Colors.blue,
            onPressed: () {
              _mostrarAlerta(context);
            },
            textColor: Colors.white,
            shape: StadiumBorder()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              title: Text("Título"),
              content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Este es el contenido de la caja de la alerta'),
                    FlutterLogo(size: 100.0)
                  ]),
              actions: <Widget>[
                FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancelar')),
                FlatButton(onPressed: () {}, child: Text('OK'))
              ]);
        });
  }
}
