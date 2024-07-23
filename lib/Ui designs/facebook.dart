import 'package:flutter/material.dart';
import 'package:free_practice/Ui%20designs/details.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Facebook_homescreen(),
  ));
}

class Facebook_homescreen extends StatefulWidget {
  const Facebook_homescreen({super.key});

  @override
  State<Facebook_homescreen> createState() => _Facebook_homescreenState();
}

class _Facebook_homescreenState extends State<Facebook_homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(color: const Color.fromARGB(255, 4, 72, 127)),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.message),
           SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  width: 200,height: 200,
                  child: Image.network(fit: BoxFit.cover,
                    "https://plus.unsplash.com/premium_photo-1717460700790-5199c828e0c7?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  width: 200,height: 200,
                  child: Image.network(fit: BoxFit.cover,
                    "https://plus.unsplash.com/premium_photo-1717460700790-5199c828e0c7?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                               ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  width: 200,height: 200,
                  child: Image.network(fit: BoxFit.cover,
                  "https://plus.unsplash.com/premium_photo-1717460700790-5199c828e0c7?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                               ),
               ),
              ]),
        ),

         Expanded(
           child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ImageDetails()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Image.network(
                        fit: BoxFit.cover,
                        "https://images.unsplash.com/photo-1718809070510-371f29994edd?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                ),
              );
            },
            itemCount: 10,),
         ),
      ],)
     
    );
  }
}
