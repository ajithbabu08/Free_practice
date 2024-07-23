// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
// runApp(MaterialApp(home: MyHomePage(),));
// }

// class MyHomePage extends StatefulWidget {
// @override
// _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
// @override
// void initState() {
// 	super.initState();
// 	Timer(Duration(seconds: 3),
// 		()=>Navigator.pushReplacement(context,
// 										MaterialPageRoute(builder:
// 														(context) =>
// 														SecondScreen()
// 														)
// 									)
// 		);
// }
// @override
// Widget build(BuildContext context) {
// 	return Container(
// 	color: Colors.white,
// 	child:FlutterLogo(size:MediaQuery.of(context).size.height)
// 	);
// }
// }
// class SecondScreen extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return Scaffold(
// 	appBar: AppBar(title:Text("GeeksForGeeks")),
// 	body: Center(
// 		child:Text("Home page",)
// 	),
// 	);
// }
// }

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_practice/flutter%20basics/flutter_hello.dart';

void main() {
  runApp(MaterialApp(
    home: SpalshScreen_Example(),
  ));
}

class SpalshScreen_Example extends StatefulWidget {
  const SpalshScreen_Example({super.key});

  @override
  State<SpalshScreen_Example> createState() => _SpalshScreen_ExampleState();
}

class _SpalshScreen_ExampleState extends State<SpalshScreen_Example> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HelloWorld(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(Icons.telegram,size: 40,color: Colors.blue.shade400,),
            ),
            Text(
              "Telegram",
              style: TextStyle(color: Colors.blue.shade400,fontSize: 30,fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
