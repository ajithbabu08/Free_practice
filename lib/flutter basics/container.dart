import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContainerExample(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContainerExample extends StatefulWidget {
  const ContainerExample({super.key});

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text('Display Text',
          style: TextStyle(
            color: Colors.redAccent,fontWeight:FontWeight.bold
            ),)),
      ),
    );
  }
}
