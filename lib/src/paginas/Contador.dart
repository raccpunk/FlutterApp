import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Contador extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Custom Themes',
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador hecho en clase',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 21,
                color: Colors.black87,
              ),
            ),
            Text(
              '$_contador',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _contador++;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _contador--;
              });
            },
          ),
          FloatingActionButton(
            child: Icon(Icons.refresh_sharp),
            onPressed: () {
              setState(() {
                _contador = 0;
              });
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
