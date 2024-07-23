import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: BottomSheetex(),
  ));
}

class BottomSheetex extends StatelessWidget {
  // const BottomSheetex({super.key});
  const BottomSheetex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APpbaR'),
      ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.blueGrey,
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(FontAwesomeIcons.share),
                          Container(
                            // leading: Icon(Icons.share),
                            child: Text('Share via "Nearby Share"'),
                            // trailing: ElevatedButton(
                            // onPressed: () {}, child: Text('Share')),
                          ),
                          ElevatedButton(onPressed: () {}, child: Text('Share'))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: [
                      //     GridView.count(
                      //       crossAxisCount: 4,
                      //       children: 
                      //         List.generate(10, (index) {
                      //           return Card(child: Text('app'),);
                      //         })
                            
                      //     ),
                      //   ],
                      // )
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FaIcon(FontAwesomeIcons.whatsapp),
                          FaIcon(FontAwesomeIcons.instagram),
                          FaIcon(FontAwesomeIcons.facebook),
                          FaIcon(FontAwesomeIcons.bluetooth),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
        child: Image.network(
            "https://imageio.forbes.com/specials-images/imageserve/65f2d5c080790f47bcfa620f/Rafa-Marquez-will-leave-FC-Barcelona-/960x0.jpg?format=jpg&width=1440"),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(MaterialApp(
//     home: BottomSheetEx(),
//   ));
// }

// class BottomSheetEx extends StatelessWidget {
//   const BottomSheetEx({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppBar'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) {
//               return Container(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.share),
//                       title: Text('Share via "Nearby Share"'),
//                       trailing: ElevatedButton(
//                         onPressed: () {},
//                         child: Text('Share'),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         FaIcon(FontAwesomeIcons.whatsapp),
//                         FaIcon(FontAwesomeIcons.instagram),
//                         FaIcon(FontAwesomeIcons.facebook),
//                         FaIcon(FontAwesomeIcons.bluetooth),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//         child: Image.network(
//           "https://imageio.forbes.com/specials-images/imageserve/65f2d5c080790f47bcfa620f/Rafa-Marquez-will-leave-FC-Barcelona-/960x0.jpg?format=jpg&width=1440",
//           fit: BoxFit.cover,
//           width: double.infinity,
//           height: double.infinity,
//         ),
//       ),
//     );
//   }
// }






// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('APpbaR'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           showModalBottomSheet(
//             context: context,
//             builder: (context) {
//               return Container(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.share),
//                       title: Text('Share via "Nearby Share"'),
//                       trailing: ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the bottom sheet
//                           // Add your share functionality here
//                         },
//                         child: Text('Share'),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         FaIcon(FontAwesomeIcons.whatsapp),
//                         FaIcon(FontAwesomeIcons.instagram),
//                         FaIcon(FontAwesomeIcons.facebook),
//                         FaIcon(FontAwesomeIcons.bluetooth),
//                       ],
//                     ),
//                      SizedBox(height: 26),
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         FaIcon(FontAwesomeIcons.whatsapp),
//                         FaIcon(FontAwesomeIcons.instagram),
//                         FaIcon(FontAwesomeIcons.facebook),
//                         FaIcon(FontAwesomeIcons.bluetooth),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//         child: Center(
//           child: Image.network(
//             "https://imageio.forbes.com/specials-images/imageserve/65f2d5c080790f47bcfa620f/Rafa-Marquez-will-leave-FC-Barcelona-/960x0.jpg?format=jpg&width=1440",
//           ),
//         ),
//       ),
//     );
//   }
// }
