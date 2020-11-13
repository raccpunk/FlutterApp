import 'package:flutter/material.dart';
//import 'package:hello_world/src/paginas/Contador.dart';
import 'package:hello_world/src/paginas/ejercicio1.dart';
import 'package:hello_world/src/paginas/ejercicio2.dart';
import 'package:hello_world/src/paginas/ejercicio3.dart';
import 'package:hello_world/src/paginas/gradiente.dart';

class MyApp extends StatelessWidget {
  bool _showPerformanceOverlay = false;
  @override
  Widget build(context) {
    return MaterialApp(
      showPerformanceOverlay: _showPerformanceOverlay,
      debugShowCheckedModeBanner: false,
      home: Center(
        child: gradiente(),
      ),
    );
  }
}
