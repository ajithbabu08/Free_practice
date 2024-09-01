
// import 'package:flutter/material.dart';
// import 'package:get/get_connect/http/src/response/response.dart';


// class UserInfo { 
// String name; 
//   String job; 
//   String? id; 
//   String? createdAt; 
//   String? updatedAt; 
 
//   UserInfo({ 
//     required this.name, 
//     required this.job, 
//     this.id, 
//     this.createdAt, 
//     this.updatedAt, 
//   }); 
 
//   factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json); 
//   Map<String, dynamic> toJson() => _$UserInfoToJson(this); 
// } 

// //Specify a method inside the DioClient class for creating a new user: 

// Future<UserInfo?> createUser({required UserInfo userInfo}) async { 
//   UserInfo? retrievedUser; 
 
//   try { 
//     Response response = await _dio.post( 
//       _baseUrl + '/users', 
//       data: userInfo.toJson(), 
//     ); 
 
//     print('User created: ${response.data}'); 
 
//     retrievedUser = UserInfo.fromJson(response.data); 
//   } catch (e) { 
//     print('Error creating user: $e'); 
// } 
// return retrievedUser; 
// } 


// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//        @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: makePostRequest,
//           child: Text('Make POST Request'),
//         ),
//         SizedBox(height: 20),
//         Text(_responseMessage),
//       ],
//     );
//   }
//     );
//   }
// }


