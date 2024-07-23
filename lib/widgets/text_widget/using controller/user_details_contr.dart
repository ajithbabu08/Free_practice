import 'package:flutter/material.dart';

class User_DetailsController extends StatelessWidget {
  final String username;
  final String userage;

  User_DetailsController({required this.username, required this.userage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Username: $username"),
            Text("User Age: $userage"),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
