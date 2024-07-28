import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SwitchExample(),
  ));
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Switch(
          activeColor: Colors.amber,
          activeTrackColor: Colors.blue,
          inactiveThumbColor: Colors.red,
          inactiveTrackColor: Colors.black,
          hoverColor: Colors.green,
            value: selected,
            onChanged: (bool value) {
              setState(() {
                selected = value;
              });
            }));
  }
}
