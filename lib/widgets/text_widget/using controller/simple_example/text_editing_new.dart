import 'package:flutter/material.dart';
import 'package:free_practice/widgets/text_widget/using%20controller/simple_example/text_editing_output_new.dart';

void main() {
  runApp(MaterialApp(
    home: App_Text(),
  ));
}

class App_Text extends StatefulWidget {
  const App_Text({super.key});

  @override
  State<App_Text> createState() => _App_TextState();
}

class _App_TextState extends State<App_Text> {
  TextEditingController unamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: unamecontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          ElevatedButton(
              onPressed: () {
                String uname = unamecontroller.text;

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WelcomeUser(
                          username: uname,
                        )));
              },
              child: Text("Log in"))
        ],
      ),
    );
  }
}
