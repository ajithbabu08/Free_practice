import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DropdownExample(),
  ));
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? selectedValue;
  String? selectedValue1;

  final List<String> firstitems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];


  final List<String> seconditems = [
    'user 1',
    'user 2',
    'user 3',
    'user 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedValue,
              hint: Text('Select an option'),
              items: firstitems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!;
                  print("Selected value: $selectedValue");
                });
              },
            ),
            SizedBox(height: 30,),
            DropdownButton<String>(
              value: selectedValue1,
              hint: Text('Select an option'),
              items: seconditems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue1 = newValue!;
                  print("Selected value: $selectedValue1");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
