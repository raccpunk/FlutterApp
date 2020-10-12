import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Paginicio extends StatelessWidget {
  // int cont = 0;
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
              '0',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // cont = cont + 1;
          Toast.show('Prueba', context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.white,
    );
  }
}
