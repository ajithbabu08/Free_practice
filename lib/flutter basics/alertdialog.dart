import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: AlertDialogExample(),
  ));
}

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({super.key});

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert !!!'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
          foregroundColor: Colors.black),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      elevation: 5,
                     backgroundColor: Colors.green,
                      title: Text('Are you sure? '),
                      content: Text('You want to continue with this account'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel',style: TextStyle(color: Colors.black),)),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Okay',style: TextStyle(color: Colors.black)))
                      ],
                    );
                  });
            },
            child: Text('Log IN')),
      ),
    );
  }
}
