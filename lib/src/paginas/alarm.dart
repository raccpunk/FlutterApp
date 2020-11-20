import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  @override
  _AlarmState createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            child: Image.asset(
              "imagenes/alarm.png",
              fit: BoxFit.cover,
            ),
            height: 150,
            width: 250,
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "School-Alarm",
              style: TextStyle(
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          buildTextBox("Tipo de usuario", Icons.person),
          buildTextBox("correo@example.com", Icons.email),
          buildTextBox("Contraseña", Icons.lock),
          SizedBox(
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Color(0xFFf99d36),
            ),
            width: 250,
          ),
        ],
      ),
    );
  }

  static Padding buildTextBox(String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Color(0xFFa1abb7),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0xFFa1abb7),
          ),
        ),
        cursorColor: Color(0xFFa1abb7),
        obscureText: true,
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Color(0xFFa1abb7),
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
