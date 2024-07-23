import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckBocEasy(),
  ));
}

class CheckBocEasy extends StatefulWidget {
  const CheckBocEasy({super.key});

  @override
  State<CheckBocEasy> createState() => _CheckBocEasyState();
}

class _CheckBocEasyState extends State<CheckBocEasy> {
  bool isCheckedflutter = false;
  bool isCheckeddart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey User"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Choose the languages known to you...",style: TextStyle(fontSize: 20),),
          Row(
            children: [
              Checkbox(
                  value: isCheckedflutter,
                  onChanged: (bool? newvalue) {
                    setState(() {
                      isCheckedflutter = newvalue!;
                      print("button clicked");
                    });
                  }),
              Text("Flutter"),
            ],
          ),

           Row(
            children: [
              Checkbox(
                  value: isCheckeddart,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckeddart = value!;
                      print("button clicked");
                    });
                  }),
              Text("Dart"),
            ],
          ),
        ],
      ),
    );
  }
}



//checkbox example with two felds