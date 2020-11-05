import 'package:flutter/material.dart';

class Disenio1 extends StatefulWidget {
  @override
  _Disenio1State createState() => _Disenio1State();
}

class _Disenio1State extends State<Disenio1> {
  static Color fondo = Color(0xFF1C495F);
  static Color letra1 = Color(0xFF4ECABA);
  static Color letra2 = Color(0xFF2C8476);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: titulo,
          ),
          cajasDeTexto,
          boton,
        ],
      ),
      backgroundColor: fondo,
    );
  }

//Titulo
  Widget titulo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'smart',
        style: TextStyle(
          color: letra1,
          fontWeight: FontWeight.bold,
          fontSize: 60,
        ),
      ),
      Text(
        'Card',
        style: TextStyle(
          color: letra2,
          fontWeight: FontWeight.bold,
          fontSize: 60,
        ),
      ),
    ],
  );
  //Columna
  Widget cajasDeTexto = Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10),
        child: _creaCajasTexto(
          "Nombre de usuario",
          Icon(Icons.person),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
        child: _creaCajasTexto(
            "Contraseña",
            Icon(
              Icons.lock_outline,
            )),
      ),
    ],
  );

  //boton de inicio de sesion
  Widget boton = Container(
    child: FlatButton(
      onPressed: () => {},
      color: Color(0xFF43cebf),
      child: Text(
        'Iniciar sesión',
        style: TextStyle(
          fontSize: 26,
        ),
      ),
      textColor: Colors.white,
    ),
    padding: EdgeInsets.all(10),
  );

  //Funcion que crea cajas de texto con su icono
  static TextField _creaCajasTexto(String texto, Icon icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: texto,
        hintStyle: TextStyle(
          color: Color(0xFF7A7E8C),
          fontSize: 20,
        ),
        prefixIcon: icon,
        filled: true,
        fillColor: Color(0xFF0D2D40),
      ),
    );
  }
}
