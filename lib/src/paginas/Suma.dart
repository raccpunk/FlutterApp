import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:hello_world/src/paginas/Disenio.dart';
import 'package:toast/toast.dart';

class Suma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SumaState();
}

class _SumaState extends State<Suma> {
  final myController = TextEditingController();
  final myControlernum2 = TextEditingController();
  void _select(Choice choice) {
    setState(() {
      switch (choice.title) {
        case 'Disenio':
          Navigator.pushNamed(context, '/Disenio');
          break;
        case 'Gradiente':
          Navigator.pushNamed(context, '/Gradiente');
          break;
      }
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Suma'),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.directions_car),
            onPressed: () {
              Toast.show("pruebitaa", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
          ),
          // ACTION BUTTON
          IconButton(
            icon: Icon(Icons.directions_bike),
            onPressed: () {
              Toast.show("pruebita 2", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
          ),
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext) {
              return choices.skip(0).map((Choice choice) {
                return PopupMenuItem<Choice>(
                    value: choice,
                    child: Row(
                      children: <Widget>[
                        Icon(choice.icon, color: Colors.blueAccent),
                        Padding(padding: const EdgeInsets.all(5)),
                        Text(choice.title),
                      ],
                    ));
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'introducir el primer numero',
                prefixIcon: Icon(Icons.format_list_numbered),
              ),
              controller: myController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'introducir el segundo numero',
                prefixIcon: Icon(Icons.format_list_numbered),
              ),
              controller: myControlernum2,
            ),
            SizedBox(height: 10),
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: () {
                double suma = double.parse(myController.text) +
                    double.parse(myControlernum2.text);
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(
                        suma.toString(),
                      ),
                    );
                  },
                );
              },
              color: Colors.lightBlue,
              child: Text(
                'Realizar suma',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Disenio', icon: Icons.toys),
  const Choice(title: 'Gradiente', icon: Icons.view_compact),
];
