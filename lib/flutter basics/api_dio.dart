import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Abhii(),
  ));
}

// List<Auto> autoFromJson(String str) =>
//     List<Auto>.from(json.decode(str).map((x) => Auto.fromJson(x)));

// String autoToJson(List<Auto> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Auto {
//   String? name;
//   String? realname;
//   String? team;
//   String? firstappearance;
//   String? createdby;
//   String? publisher;
//   String? imageurl;
//   String? bio;

//   Auto({
//     this.name,
//     this.realname,
//     this.team,
//     this.firstappearance,
//     this.createdby,
//     this.publisher,
//     this.imageurl,
//     this.bio,
//   });

//   factory Auto.fromJson(Map<String, dynamic> json) => Auto(
//         name: json["name"],
//         realname: json["realname"],
//         team: json["team"],
//         firstappearance: json["firstappearance"],
//         createdby: json["createdby"],
//         publisher: json["publisher"],
//         imageurl: json["imageurl"],
//         bio: json["bio"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "realname": realname,
//         "team": team,
//         "firstappearance": firstappearance,
//         "createdby": createdby,
//         "publisher": publisher,
//         "imageurl": imageurl,
//         "bio": bio,
//       };
// }

class Auto {
  String? name;
  String? realname;
  String? imageurl;

  Auto({this.name, this.realname, this.imageurl});

  Auto.fromJson(Map<String, dynamic> Json) {
    name = Json['name'];
    realname = Json['realname'];
    imageurl = Json['imageurl'];
  }
}

// To parse this JSON data, do

//     final auto = autoFromJson(jsonString);

class Abhii extends StatefulWidget {
  const Abhii({super.key});

  @override
  State<Abhii> createState() => _AbhiiState();
}

class _AbhiiState extends State<Abhii> {
  Dio Abhi = Dio();
  List<Auto> come = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starr();
  }

  Future<void> starr() async {
    try {
      print('data fetched');
      final response =
          await Abhi.get('https://www.simplifiedcoding.net/demos/marvel/');
      if (response.statusCode == 200) {
        print('data,${response.data}');

        final List<dynamic> data = response.data;

        setState(() {
          // come = data.map((json) => Auto.fromJson(json)).toList();
          // come.clear();
          come.addAll(data.map((postJson) => Auto.fromJson(postJson)).toList());
        });
      } else {
        print('error');
      }
    } catch (e) {
      print('error.$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('come'),
        ),
        body:
            // Container(color: Colors.red,height: 200)
            ListView.builder(
                itemCount: come.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: 
                      // come[index].imageurl != null ? 
                      // NetworkImage(come[index].imageurl!):
                      // Text("no image") as ImageProvider,
                      
                       NetworkImage(come[index].imageurl!)

                      ),
                    // tileColor: Colors.red,
                    title: Text(come[index].name!),
                    subtitle: Text(come[index].realname!),
                  );
                }),
      ),
    );
  }
}
