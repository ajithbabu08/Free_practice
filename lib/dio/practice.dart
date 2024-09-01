import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmployeeDetails {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Datum>? data;
  Support? support;

  EmployeeDetails({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });
  
  static fromJSon(postJson) {}
}


class Datum {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Datum({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });
}

class Support {
  String? url;
  String? text;

  Support({
    this.url,
    this.text,
  });
}

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  final Dio dio = Dio();
  List<EmployeeDetails> datas = [];

  @override
  void initState() {
    fetchApi();
    super.initState();
  }

  void fetchApi() async {
    try {
      final response = await dio.get('https://reqres.in/api/users?delay=3');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        setState(() {
          datas.clear();
          datas.addAll(
              data.map((postJson) => EmployeeDetails.fromJSon(postJson)));
        });
      } else {
        print('Failed to load posts');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('data'),
          subtitle: Text('data'),
        );
      },
    ));
  }
}
