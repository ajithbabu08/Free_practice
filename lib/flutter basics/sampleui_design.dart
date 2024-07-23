import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SampleProgram(),
  ));
}

class SampleProgram extends StatefulWidget {
  const SampleProgram({super.key});

  @override
  State<SampleProgram> createState() => _SampleProgramState();
}

class _SampleProgramState extends State<SampleProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOonLite"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            child: Image.asset('assets/images/landscape.jpeg',fit: BoxFit.cover,)),
            Spacer(flex: 3,),

          Container(
            width: double.infinity,
              child: 
              Image(fit: BoxFit.cover,
                  image: NetworkImage(
                    
                      "https://images.unsplash.com/photo-1622784618764-f60d51bd1fc6?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
                      )
        ],
      ),
    );
  }
}
