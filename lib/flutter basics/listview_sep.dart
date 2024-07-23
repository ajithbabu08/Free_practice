import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewSeparatedExample(),
  ));
}

class ListViewSeparatedExample extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Separated ListView Example'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) {
          if ((index + 1) % 2 == 0 && index != items.length - 1) {
            return Divider(
              thickness: 5,
              color: Colors.blue,
            );
          } else {
            return SizedBox.shrink(); 
          }
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text('Subtitle for ${items[index]}'),
            leading: CircleAvatar(
              child: Text((index + 1).toString()), 
            ),
            onTap: () {
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}

















// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ListSepPgm(),
//   ));
// }

// class ListSepPgm extends StatefulWidget {
//   const ListSepPgm({super.key});

//   @override
//   State<ListSepPgm> createState() => _ListSepPgmState();
// }

// class _ListSepPgmState extends State<ListSepPgm> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.separated(
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text('hi user1'),
//             );
//           },
//           separatorBuilder: (BuildContext context, int index) {
            
//             return Container(color: Colors.limeAccent,
//               child: Text("Seperates pages"),
//             );
//           },
//           itemCount: 4),
//     );
//   }
// }
