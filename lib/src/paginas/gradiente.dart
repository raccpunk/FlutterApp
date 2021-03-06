//define un widget
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Gradiente extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GradienteState();
}

class _GradienteState extends State<Gradiente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Bienvenido'),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.indigo,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "imagenes/ubicacion2.png",
                  fit: BoxFit.cover,
                ),
                Text(
                  '¡Descubre!',
                  style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
