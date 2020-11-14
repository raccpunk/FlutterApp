import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Suma extends StatefulWidget{
@override 
State<StatefulWidget> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  
  final myController = TextEditingController();
  final myControlernum2 = TextEditingController();
  @override 
  void dispose () 
  {
    myController.dispose();
    super.dispose();
  }

}

@override
Widget buil(BuildContext context){
 return Scaffold(
   appBar: GradientAppBar(
     title: Text ('Suma'),
     backgroundColorStart: Colors.cyan,
     backgroundColorEnd: Colors.indigo,
   ),
   body: 
   Padding(
     padding: const EdgeInsets.all(16.0),
     child: ListView(
       children: <Widget> [
         TextField(
           keyboardType: TextInputType.number,
           decoration: InputDecoration(
             labelText: 'introducir el primer numero',
             prefixIcon: Icon(Icons.format_list_numbered),

           ),
           controller: myControllernum2,
         ),
          SizedBox(height: 10),
          MaterialButton(
            minWidth: 200.0,
            height: 40.0,
            onPressed: ()(
              int suma=int.parse(myController.text)+int.parse(myControlernum2.text);
              return showDialog
              context: context,
              builder: (context)(
                return AlertDialog(
                  content: Text(suma.tostring()),
                ); 
              )
            )
          )
       ],
     ),
   )
 )
}