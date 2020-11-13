import 'package:flutter/material.dart';

class Disenio3 extends StatefulWidget {
  Disenio3({Key key}) : super(key: key);

  @override
  _Disenio3State createState() => _Disenio3State();
}

class _Disenio3State extends State<Disenio3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Categorias',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide.none,
              ),
              hintText: "Buscar",
              filled: true,
              fillColor: Colors.grey[200],
              prefixIcon: Icon(
                Icons.search_outlined,
              ),
            ),
          ),
          crearboton("imagenes/ensaladas.png"),
          crearboton("imagenes/fideos.png"),
          crearboton("imagenes/sushi.png"),
          crearboton("imagenes/hamburguesas.png"),
          crearboton("imagenes/tacos.png"),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  static Padding crearboton(String image) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FlatButton(
        onPressed: () => {},
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
