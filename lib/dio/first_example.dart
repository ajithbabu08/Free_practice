import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ApiUsingDio(),
  ));
}

class ApiUsingDio extends StatefulWidget {
  const ApiUsingDio({super.key});

  @override
  State<ApiUsingDio> createState() => _ApiUsingDioState();
}

class _ApiUsingDioState extends State<ApiUsingDio> {
  var JsonList;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users?delay=3');
      if (response.statusCode == 200) {
        setState(() {
          JsonList = response.data['page'] as List;
        });
      } else {
        print(response.statusCode);
        
      }
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, int index) {
          ListTile(
            title: Text(JsonList[index]['first_name']),
            subtitle: Text(JsonList[index]['last_name']),
          );
        },
        itemCount: JsonList == null ? 0 : JsonList.length,
      ),
    );
  }
}
