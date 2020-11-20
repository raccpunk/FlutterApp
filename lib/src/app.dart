import 'package:flutter/material.dart';
import 'package:hello_world/src/paginas/alarm.dart';
//import 'package:hello_world/src/paginas/Contador.dart';
import 'package:hello_world/src/paginas/ejercicio1.dart';
import 'package:hello_world/src/paginas/ejercicio2.dart';
import 'package:hello_world/src/paginas/ejercicio3.dart';
import 'package:hello_world/src/paginas/gradiente.dart';

import 'paginas/fima.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Alarm(),
      ),
    );
  }
}
