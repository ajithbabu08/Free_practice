import 'package:flutter/material.dart';

class User_DetailsPage extends StatelessWidget {
  User_DetailsPage({super.key, required this.myname, required this.myage});

  String myname;
  String myage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey $myname"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 200,
            color: Colors.yellow, child: Text("you have entered your name as ${myname}")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 200,
              color: Colors.blue, child: Text("you have entered your age as ${myname}")),
        )
      ]),
    );
  }
}
