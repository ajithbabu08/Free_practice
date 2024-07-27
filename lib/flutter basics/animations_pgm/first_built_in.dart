import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(MaterialApp(
    home: Myanimationsfirst(),
  ));
}

class Myanimationsfirst extends StatefulWidget {
  const Myanimationsfirst({super.key});

  @override
  State<Myanimationsfirst> createState() => _MyanimationsfirstState();
}

class _MyanimationsfirstState extends State<Myanimationsfirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: LoadingAnimationWidget.horizontalRotatingDots(color: Colors.red, size: 100),
         child: LoadingAnimationWidget.bouncingBall(color: Colors.yellow, size: 100)
        ),
    );
  }
}
