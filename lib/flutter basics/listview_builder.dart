import 'package:flutter/material.dart';
import 'package:free_practice/flutter%20basics/listviewexample.dart';

void main() {
  runApp(MaterialApp(
    home: ListbuilderExample(),
  ));
}

class ListbuilderExample extends StatefulWidget {
  const ListbuilderExample({super.key});

  @override
  State<ListbuilderExample> createState() => _ListbuilderExampleState();
}

class _ListbuilderExampleState extends State<ListbuilderExample> {
  List<String> userdata = [
    'user1',
    'user2',
    'user3',
    'user4',
    'user5',
    'user6',
    'user7',
    'user8',
    'user10',
    'user10'
  ];
  var image = [
    "https://assets.architecturaldigest.in/photos/63806da6d2c4a1a597b273fd/1:1/w_2896,h_2896,c_limit/1442809583",
    "https://media.gq.com/photos/610d6be4539f373b4ca1bd94/1:1/w_2693,h_2693,c_limit/GettyImages-955410340.jpg",
    "https://depauliaonline.com/wp-content/uploads/2021/09/IMG_5087-1-600x900.jpg",
    "https://tmssl.akamaized.net/images/foto/galerie/lionel-messi-argentinien-2022-1698689902-120754.jpg?lm=1698689910",
    "https://people.com/thmb/lciBMDA0VsC396ndh0hob_AJoqk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(919x539:921x541)/messi-family-dccf1384c5d74dc89e3bf2ea6f5417a9.jpg",
    "https://assets.architecturaldigest.in/photos/63806da6d2c4a1a597b273fd/1:1/w_2896,h_2896,c_limit/1442809583",
    "https://media.gq.com/photos/610d6be4539f373b4ca1bd94/1:1/w_2693,h_2693,c_limit/GettyImages-955410340.jpg",
    "https://depauliaonline.com/wp-content/uploads/2021/09/IMG_5087-1-600x900.jpg",
    "https://tmssl.akamaized.net/images/foto/galerie/lionel-messi-argentinien-2022-1698689902-120754.jpg?lm=1698689910",
    "https://people.com/thmb/lciBMDA0VsC396ndh0hob_AJoqk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(919x539:921x541)/messi-family-dccf1384c5d74dc89e3bf2ea6f5417a9.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListviewExamplePgm()));
                },
                title: Text(userdata[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(image[index]),
                )
                // leading: CircleAvatar(backgroundImage: NetworkImage(
                //   "https://pixlr.com/images/index/ai-image-generator-one.webp")),
                //   title: Text("Hey user "),
                //   subtitle: Text("you have a message"),
                //   trailing: Icon(Icons.mail),
                );
          }),
    );
  }
}






















// import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ListView2(),));
// }

// class ListView2 extends StatelessWidget {

//   var name=["shoe1","shoe2","shoe3","shoe4","shoe5","shoe6","shoe7","shoe8","shoe9","shoe10"];
//   var image=["assets/images/adidas1.jpg","assets/images/adidas1.jpg","assets/images/adidas1.jpg","assets/images/adidas1.jpg","assets/images/adidas1.jpg",
//     "assets/images/nike.jpg","assets/images/nike.jpg","assets/images/nike.jpg","assets/images/nike.jpg","assets/images/nike.jpg"];

//   var price=["\$4000","\$4000","\$4000","\$4000","\$4000","\$3000","\$3000","\$3000","\$3000","\$3000",];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text("WhatsApp"),
//         actions: [
//           const Icon(Icons.camera_alt_outlined),
//           const SizedBox(width: 20,),
//           const Icon(Icons.search),
//           const SizedBox(width: 20,),

//           PopupMenuButton(itemBuilder: (context){
//             return [
//               const PopupMenuItem(child: Text("New group")),
//               const PopupMenuItem(child: Text("New Broadcast")),
//               const PopupMenuItem(child: Text("Linked devices")),
//               const PopupMenuItem(child: Text("Starred messages")),
//               const PopupMenuItem(child: Text("Payments")),
//               const PopupMenuItem(child: Text("Settings")),

//             ];
//           })
//         ],
//       ),
//       body: ListView(
//         children: List.generate(10, (index) =>  Card(
//           child: ListTile(
//             title: Text(name[index]),
//             subtitle: Text("\$${price[index]}"),
//             trailing: const Wrap(
//                 direction: Axis.vertical,
//                 children: [
//                   Text("1:30"),
//                   SizedBox(width: 10),
//                   CircleAvatar(minRadius: 6,maxRadius: 12,backgroundColor: Colors.teal,
//                   child: Text("10"),)
//                 ]
//             ),

//             leading: CircleAvatar(
//               backgroundImage: AssetImage(image[index]),
//             ),
//           ),
//         )),
//       ),
//     );
//   }
// }
