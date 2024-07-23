import 'package:flutter/material.dart';
import 'package:free_practice/widgets/text_widget/using%20controller/user_details_contr.dart';

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
   TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("appname"),),
        // appBar: AppBar(
        //   title: const Text(
        //     "HomePage",
        //     style: TextStyle(

        //         fontSize: 30,
        //         fontWeight: FontWeight.w300,
        //         backgroundColor: Colors.black38,
        //         color: Colors.indigo),
        //     textAlign: TextAlign.justify,
            
        //   ),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
                 controller: namecontroller,
                // decoration: const InputDecoration(
                //   border: OutlineInputBorder(),
                //   hintText: "Enter your name here",
                // ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Age",
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50), backgroundColor: Colors.blue),
                onPressed: () {
                  String username = namecontroller.text;
                  String userage = passwordcontroller.text;

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => User_DetailsController(
                            username: username,
                            userage: userage,
                          )));
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }
}
