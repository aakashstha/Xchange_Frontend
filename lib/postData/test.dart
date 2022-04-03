import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String endPoint = 'http://localhost:8000/cars';
  List imagefile = [];

  void _choose() async {
    final ImagePicker _picker = ImagePicker();
    final List<XFile>? _images = await _picker.pickMultiImage();

    if (_images != null) {
      _upload(_images);
    }
  }

  void _upload(List<XFile> file) async {
    
    List images = [];
    for (var element in file) {
      {
        images.add(await MultipartFile.fromFile(element.path));
        imagefile.add(await MultipartFile.fromFile(element.path));
      }
    }
    Map<String, dynamic> mapData = {
      "brand": "Tesla112233",
      "price": "500000011223344",
      "year": "2010",
      "kmDriven": "5000",
      "adTitle": "Tesla A45112233344",
      "description": "This is awesome car after apple very good",
      "location": "Biratnagar",
      "image": images
    };
    // print(images);

    FormData data = FormData.fromMap(mapData);
    Dio dio = Dio();

    try {
      Response response = await dio.post(endPoint, data: data);
      // ignore: avoid_print
      print(response.data);
    } catch (error) {
      // ignore: avoid_print
      print("new awesome " + error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Upload"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (imagefile != null)
              for (var element in imagefile)
                Image.file(
                  element,
                  width: 200,
                  height: 200,
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _choose();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
