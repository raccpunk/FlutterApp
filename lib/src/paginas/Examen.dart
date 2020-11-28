import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamenFinal extends StatefulWidget {
  ExamenFinal({Key key}) : super(key: key);

  @override
  _ExamenFinalState createState() => _ExamenFinalState();
}

class _ExamenFinalState extends State<ExamenFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Explore"),
        leading: Icon(
          Icons.remove_red_eye,
          size: 35,
        ),
        actions: [
          Icon(
            Icons.videocam,
            size: 50,
          )
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
                ),
                labelText: "search people or tags",
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                botonIcon(
                  "imagenes/favoritos.png",
                  "Popular Now",
                  Colors.white,
                  100,
                  150,
                  16,
                  Colors.black,
                ),
                Padding(padding: EdgeInsets.only(left: 50)),
                botonIcon(
                  "imagenes/flecha-hacia-arriba.png",
                  "On The Rise",
                  Colors.white,
                  100,
                  150,
                  16,
                  Colors.black,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Channels",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: boton(
                    "imagenes/teatro.png",
                    "Comedy",
                    Colors.pink[400],
                    90,
                    350,
                    30,
                    Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: boton(
                    "imagenes/artista.png",
                    "Art & Experimental",
                    Colors.yellow[700],
                    90,
                    350,
                    26,
                    Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: boton(
                    "imagenes/gato.png",
                    "Cats",
                    Colors.blue[500],
                    90,
                    350,
                    26,
                    Colors.white,
                  ),
                ),
                boton(
                  "imagenes/mascota.png",
                  "Dogs",
                  Colors.deepPurple[400],
                  90,
                  350,
                  26,
                  Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

SizedBox boton(String image, String text, Color color, double height,
    double width, double textSize, Color textColor) {
  return SizedBox(
    child: FlatButton(
      onPressed: () => {},
      child: Row(
        children: <Widget>[
          Image.asset(
            image,
            width: 70,
            height: 90,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ],
      ),
      color: color,
    ),
    width: width,
    height: height,
  );
}

SizedBox botonIcon(String image, String text, Color color, double height,
    double width, double textSize, Color textColor) {
  return SizedBox(
    child: FlatButton(
      onPressed: () => {},
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: 60,
            height: 60,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ],
      ),
      color: color,
    ),
    width: width,
    height: height,
  );
}
