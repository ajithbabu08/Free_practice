import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stack_ExamplePgm(),
  ));
}

class Stack_ExamplePgm extends StatelessWidget {
  const Stack_ExamplePgm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [

        Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 200,
          top: 300,
          child: Container(
            color: Colors.blue,
            height: 50,
            width: 100,
          ),
        )
      ]),
    );
  }
}
