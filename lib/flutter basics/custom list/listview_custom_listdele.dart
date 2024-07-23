import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: DelegatewithList(),
  ));
}

class DelegatewithList extends StatefulWidget {
  const DelegatewithList({super.key});

  @override
  State<DelegatewithList> createState() => _DelegatewithListState();
}

class _DelegatewithListState extends State<DelegatewithList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        ListTile(title: Text('heyyyyye'),),
        ListTile(title: Text('New user'),)
      ])),
    );
  }
}