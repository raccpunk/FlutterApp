import 'package:flutter/material.dart';
import 'package:hello_world/src/paginas/Examen.dart';
import 'package:hello_world/src/paginas/Suma.dart';
import 'package:hello_world/src/paginas/alarm.dart';
//import 'package:hello_world/src/paginas/Contador.dart';
import 'package:hello_world/src/paginas/ejercicio1.dart';
import 'package:hello_world/src/paginas/ejercicio2.dart';
import 'package:hello_world/src/paginas/ejercicio3.dart';
import 'package:hello_world/src/paginas/Gradiente.dart';
import 'package:hello_world/src/paginas/Disenio.dart';
import 'paginas/fima.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ExamenFinal(),
        '/Disenio': (context) => Disenio(),
        '/Gradiente': (context) => Gradiente(),
      },
      //home: Center(
      // child: Suma(),
      //),
    );
  }
}
