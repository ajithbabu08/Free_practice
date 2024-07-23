import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //runApp method
    home: HomePage(),
  )); //MaterialApp
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  @override
//App widget tree
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
      ), //AppBar
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: 430,
              height: 700,
              child: Column(
                children: [
                  Text(
                    'Algorithms',
                    style: TextStyle(
                        color: Colors.greenAccent[400],
                        fontSize: 30), //TextStyle
                  ), //Text
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ), //SizedBox
                      Text(
                        'Searching Algorithm: ',
                        style: TextStyle(fontSize: 17.0),
                      ), //Text
                      SizedBox(width: 10), //SizedBox
                      Checkbox(
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value ?? false;
                            print("${value}");
                          });
                        },
                      ), //Checkbox
                    ], //<Widget>[]
                  ), //Row
                ],
              ), //Column
            ), //SizedBox
          ), //Padding
        ), //Card
      ), //Center//Center
    ); //MaterialApp
  }
}
