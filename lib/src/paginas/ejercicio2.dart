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
              padding: EdgeInsets.only(
                top: 170,
                bottom: 50,
              ),
              child: Image.asset("imagenes/matchme.png"),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText:
                      "Occaecat Lorem ex ea do commodo non duis cupidatat tempor.",
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color(0xFF233b56)),
            ),
            FlatButton(
              onPressed: () => {},
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Color(0xFF853add),
            )
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
