import 'package:flutter/material.dart';
import 'package:free_practice/widgets/text_widget/using%20onchange/user_details.dart';


void main() {
  runApp(MaterialApp(
    home: Text_Widget(),
  ));
}

class Text_Widget extends StatefulWidget {
  @override
  State<Text_Widget> createState() => _Text_WidgetState();
}

class _Text_WidgetState extends State<Text_Widget> {
  String name = "";
  String age = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "HomePage",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.indigo),
            textAlign: TextAlign.justify,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name here",
                  // error: Text("Incorrect field")
                ),
                onChanged: (newname) {
                  setState(() {
                    name = newname;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Age",
                  // error: Text("Incorrect field")
                ),
                onChanged: (newage) {
                  setState(() {
                    age = newage;
                  });
                },
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => User_DetailsPage(myname: name,myage: age),
                ),
              );
            },
            child: Text('Save'),
          ),
          
          ],
        ));
  }
}
