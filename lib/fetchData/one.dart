import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Mobile> fetchMobile() async {
  final response = await http
      .get(Uri.parse('http://localhost:8000/mobiles/6216041495d6b39fa6f89db5'));

  //print(jsonDecode(response.body)['mobile']);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Mobile.fromJson(jsonDecode(response.body)["mobile"]);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Mobile {
  final String brand;
  final int price;
  final String adTitle;
  final String description;
  final List images;

  const Mobile({
    required this.brand,
    required this.price,
    required this.adTitle,
    required this.description,
    required this.images,
  });

  factory Mobile.fromJson(Map<String, dynamic> json) {
    return Mobile(
      brand: json['brand'],
      price: json['price'],
      adTitle: json['adTitle'],
      description: json['description'],
      images: json['images'],
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  late Future<Mobile> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchMobile();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Mobile>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.brand);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
