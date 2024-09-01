import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TimePickExample(),
  ));
}

class TimePickExample extends StatefulWidget {
  TimePickExample({super.key});

  @override
  State<TimePickExample> createState() => _TimePickExampleState();
}

class _TimePickExampleState extends State<TimePickExample> {
  final timecontroller = TextEditingController();

  TimeOfDay currenttime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            onTap: () async {
              await timePickerfunction(context);
            },
            controller: timecontroller,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Select Time"),
          )
        ],
      ),
    );
  }

  Future<void> timePickerfunction(BuildContext context) async {
    var time = await showTimePicker(
      context: context,
      initialTime: currenttime,
    );
    if (time != null) {
      setState(() {
        currenttime = time;
        timecontroller.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
