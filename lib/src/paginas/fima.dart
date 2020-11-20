import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fima extends StatefulWidget {
  @override
  _FimaState createState() => _FimaState();
}

class _FimaState extends State<Fima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image.asset(
            "imagenes/fima.jpg",
            fit: BoxFit.cover,
          ),
          filas(Icons.info, "Informacion", Icons.person, "Mi Cuenta",
              Icons.assignment_ind, "Acreditaciones"),
          filas(Icons.pages, "Tickets", Icons.group, "Expositores", Icons.map,
              "Planos"),
          filas(Icons.info, "Actividades", Icons.person, "Premios y concursos",
              Icons.assignment_ind, "Noticias"),
          filas(Icons.info, "Agenda", Icons.person, "Notificaciones",
              Icons.assignment_ind, "FimaTv"),
        ],
      ),
    );
  }

  static Padding filas(
    IconData icon1,
    String texto1,
    IconData icon2,
    String texto2,
    IconData icon3,
    String texto3,
  ) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Icon(icon1, size: 35),
                Padding(padding: EdgeInsets.all(8)),
                Text(texto1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Icon(icon2, size: 35),
                Padding(padding: EdgeInsets.all(8)),
                Text(texto2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Icon(icon3, size: 35),
                Padding(padding: EdgeInsets.all(8)),
                Text(texto3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
