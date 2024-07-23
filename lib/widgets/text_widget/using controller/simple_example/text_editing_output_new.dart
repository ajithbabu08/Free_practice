import 'package:flutter/material.dart';

class WelcomeUser extends StatelessWidget {
  WelcomeUser({super.key,required this.username});

  String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Login"),
      ),
      body: Text("$username"),
    );
  }
}
