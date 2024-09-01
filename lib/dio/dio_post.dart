import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class ApiResponse {
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? success;

  ApiResponse({this.firstname, this.lastname, this.email, this.password,this.success});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    success=json['success'];
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dio POST Request Example')),
        body: Center(child: PostRequestWidget()),
      ),
    );
  }
}

class PostRequestWidget extends StatefulWidget {
  @override
  _PostRequestWidgetState createState() => _PostRequestWidgetState();
}

class _PostRequestWidgetState extends State<PostRequestWidget> {
  String _responseMessage = '';

  // Define the model class for the response

  // Function to make the POST request
  Future<void> makePostRequest() async {
    // Create a Dio instance
    final dio = Dio();

    // Define the endpoint URL
    final url =
        'https://fressery.b4production.com/index.php?route=api/register';

    // Define the request payload as form data
    final formData = FormData.fromMap({
      'firstname': 'John',
      'lastname': 'Doe',
      'email': 'john.doe@example.com',
      'password': 'examplePassword',
      // 'telephone': '1234567890',
    });

    try {
      // Make the POST request
      final response = await dio.post(url, data: formData);
      print("response---------$response");
      // Handle the response
      if (response.statusCode == 200) {
        // Parse the response data
        final responseData = response.data;

        // Convert JSON to model
        final apiResponse = ApiResponse.fromJson(responseData);

        if (apiResponse.success == 'text_success') {
          setState(() {
            _responseMessage = 'Request was successful!';
          });
        } else {
          setState(() {
            _responseMessage = 'Request failed with response: ${responseData}';
          });
        }
      } else {
        setState(() {
          _responseMessage = 'Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      // Handle any errors
      setState(() {
        _responseMessage = 'Exception: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: makePostRequest,
          child: Text('Make POST Request'),
        ),
        SizedBox(height: 20),
        Text(_responseMessage),
      ],
    );
  }
}
