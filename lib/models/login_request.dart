import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String email, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost:8000/admin/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "email": email,
      "password": password,
    }),
  );
  //final data = jsonDecode(response.body);


  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album11111.');
  }
}

class Album {
  final String email;
  final String password;

  const Album({required this.email, required this.password});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      email: json['email'],
      password: json['password'],
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp1> {
  final TextEditingController _controlleremail = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controlleremail,
          decoration: const InputDecoration(hintText: 'Enter Email'),
        ),
        TextField(
          controller: _controllerpassword,
          decoration: const InputDecoration(hintText: 'Enter Password'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum =
                  createAlbum(_controlleremail.text, _controllerpassword.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        print(snapshot.hasData);
        if (snapshot.hasData) {
          return Text(snapshot.data!.email);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
