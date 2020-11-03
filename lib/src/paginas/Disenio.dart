//define un widget
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class MenuComponentes extends StatelessWidget{
//   final Lista=['Elementoc 1','Elementoc 2','Elementoc 3','Elementoc 4'];
//   @override
//   Widget build(BuildContext context)=> new Scaffold(
//     appBar: new AppBar (
//     title: new Text('Lista de opciones'),
//     ),

//      body: Padding(
//            Padding: const EdgeInsets.all(16.0),
//       Child: ListView(
//         Chindren: _createms(context)
//       )
//      )
//   );

class Disenio extends StatefulWidget {
  @override
  _DisenioState createState() => _DisenioState();
}

class _DisenioState extends State<Disenio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de imagen'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image.asset(
              'imagenes/nirvana.png',
              fit: BoxFit.cover,
            ),
            tituloseccion,
            botones,
            container(
              Padding: const EdgeInsets.all(32)
              child: Text(
                'Prueba'
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 //primer fila
 Widget tituloseccion-container
 (
  Padding: const EdgeInsets.all(32)
  Child: Row(
    children: <Widget>[

      Expaned(
        child: column(
          crossAxisAlignment: crossAxisAlignment.start,
          children: <Widget>[
            container(
              padding: const EdgeInsets.only(bottom: 8),
              child: text(
                'Universidad Tecnologica Metropolitana',
                style: TextStyle(
                  fontweight: fontweight.bold,
                )
              ),

            ),
            Text (
              'Desarollo de software multiplataforma',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        icon(
          icons.star,
          color: Colors.red[500],
        ),
        text('5'),
      ),
    ],
  ),
 )

 static Column _crearColumna(Color color, IconData icon,String texto){
   return Column(
     mainAxisSize: MainAxisSize.min ,
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       Icon(icon.color: color,),
       Container (
         margin: const EdgeInsets.only(top: 8),
         child: Text(
           texto,
           style:  TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400,
             color: color,
           )
         ),
       )
     ],
   );
 }

 Widget botones=Container(
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
        _crearColumna(color1, Icons.call,'Llamar'),
        _crearColumna(color2, Icons.near_me, 'Navegar'),
        _crearColumna(color3, Icons.share, 'Comparte'),
   ],),
 )

 class disenio extends StatefulWidget (
  @override 
  State <StatefulWidget> createState()=> _DisenioState();

 )
class __DisenioState extends State<Disenio>(
  static Color color1=Colors.lightGreen[700];
  static Color color2=Colors.blue[700];
  @override 
  Widget build(BuildContext context){

  }
)

