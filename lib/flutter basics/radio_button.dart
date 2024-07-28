import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: RadioExample(),
  ));
}

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: Column(
        children: [
          Text("Select your gender"),
          RadioListTile(
              value: 'Male',
              title: Text("Male"),
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                  print("Selected gender is Male");
                });
              }),
          RadioListTile(
             title: Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                   print("Selected gender is Female");
                });
              }),
        ],
      ),
    );
  }
}
