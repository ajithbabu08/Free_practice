// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoggedInShare extends StatefulWidget {
//   const LoggedInShare({super.key});

//   @override
//   State<LoggedInShare> createState() => _LoggedInShareState();
// }

// class _LoggedInShareState extends State<LoggedInShare> {
//   // late SharedPreferences mysharevalue;
//   late String usernamelog;

//   @override
//   void initState() {
//     fetchlogin();
//     super.initState();
//   }

//   void fetchlogin() async{

//     SharedPreferences mysharevalue=await SharedPreferences.getInstance();
//     setState(() {
//    usernamelog = mysharevalue.getString('uname')!;

//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text("Welcome $usernamelog"),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeofLogin extends StatefulWidget {
  const HomeofLogin({super.key});

  @override
  State<HomeofLogin> createState() => _HomeofLoginState();
}

class _HomeofLoginState extends State<HomeofLogin> {
 late SharedPreferences mypreference;
  late String user;

  @override
  void initState() {
    fetchValue();
    super.initState();
  }

 Future<void> fetchValue() async {
    // final SharedPreferences 
    mypreference = await SharedPreferences.getInstance();
    setState(() {
     user = mypreference.getString('usernameis')!;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Welcome $user'),
    );
  }
}
