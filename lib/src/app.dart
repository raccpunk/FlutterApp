import 'package:flutter/material.dart';
import 'package:hello_world/src/paginas/Contador.dart';
import 'paginas/pagina_inicio.dart';

//creando un widget
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Center(
        child: Contador(),
      ),
    );
  }
}
