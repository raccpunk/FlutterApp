import 'package:flutter/material.dart';

class Disenio2 extends StatefulWidget {
  @override
  _Disenio2State createState() => _Disenio2State();
}

class _Disenio2State extends State<Disenio2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 170),
              child: Image.asset("imagenes/matchme.png"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("imagenes/fondo.jpg"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
