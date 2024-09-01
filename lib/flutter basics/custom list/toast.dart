import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void main() {
  runApp(MaterialApp(
    home: MotionToastExample(),
  ));
}

class MotionToastExample extends StatefulWidget {
  const MotionToastExample({super.key});

  @override
  State<MotionToastExample> createState() => _MotionToastExampleState();
}

class _MotionToastExampleState extends State<MotionToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            MotionToast.success(description: Text("Congratssss")).show(context);
          },
          child: Text('Click Here')),
    );
  }
}
