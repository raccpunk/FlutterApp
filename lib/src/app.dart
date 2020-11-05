import 'package:flutter/material.dart';
//import 'package:hello_world/src/paginas/Contador.dart';
// import 'package:hello_world/src/paginas/ejercicio1.dart';
import 'package:hello_world/src/paginas/ejercicio2.dart';
// import 'package:hello_world/src/paginas/Disenio.dart';
//import 'paginas/pagina_inicio.dart';

//creando un widget
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Disenio2(),
      ),
    );
  }
}
