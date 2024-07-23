import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListviewCus(),
  ));
}

class ListviewCus extends StatefulWidget {
  const ListviewCus({super.key});

  @override
  State<ListviewCus> createState() => _ListviewCusState();
}

class _ListviewCusState extends State<ListviewCus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.red,
            child: Text('hey'),
          );
        }, childCount: 10),
      ),
    );
  }
}
