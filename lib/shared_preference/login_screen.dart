// import 'package:flutter/material.dart';
// import 'package:free_practice/shared_preference/login_home.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HomeSharedPref(),
//   ));
// }

// class HomeSharedPref extends StatefulWidget {
//   const HomeSharedPref({super.key});

//   @override
//   State<HomeSharedPref> createState() => _HomeSharedPrefState();
// }

// class _HomeSharedPrefState extends State<HomeSharedPref> {
//   TextEditingController username = TextEditingController();

//   // late SharedPreferences mysharedvalue;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: username,
//           ),
//           ElevatedButton(
//               onPressed: () async {
//                 final SharedPreferences
//                 mysharedvalue = await SharedPreferences.getInstance();
//                 String user = username.text;

//                 if (user != '') {
//                   mysharedvalue.setString('uname', user);
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => LoggedInShare()));
//                 }
//                 username.text = '';
//               },
//               child: Text('LogIN'))
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:free_practice/shared_preference/login_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLoginPage extends StatefulWidget {
  const SharedLoginPage({super.key});

  @override
  State<SharedLoginPage> createState() => _SharedLoginPageState();
}

class _SharedLoginPageState extends State<SharedLoginPage> {
  TextEditingController username_controller = TextEditingController();
  // late SharedPreferences sharePrefvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: username_controller,
          ),
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences sharePrefvalue =
                    await SharedPreferences.getInstance();

                String user = username_controller.text;
                if (user != '') {
                  sharePrefvalue.setString('usernameis', user);
                }
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeofLogin()));
              },
              child: Text('Login'))
        ],
      ),
    );
  }
}
