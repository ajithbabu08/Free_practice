import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HelloWorld(), 
  ));
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(child: Text("Hey, Welcome to flutter")),
    );
  }
}


