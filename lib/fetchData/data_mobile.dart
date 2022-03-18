import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:xchange_frontend/theme_colors.dart';

class BuyMobileAd extends StatelessWidget {
  final response = Uri.parse("http://localhost:8000/mobiles");

  BuyMobileAd({Key? key}) : super(key: key);

  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(response);
    // print(jsonDecode(result.body)['mobile']);
    return jsonDecode(result.body)['mobile'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // print(_age(snapshot.data[0]));
            return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  // print(snapshot.data[index]["images"]);
                  return getAd(snapshot.data[index]);
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Widget getAd(dynamic datalist) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 17, top: 24),
        child: Container(
          width: 380,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: ClipRRect(
                  child: SizedBox(
                      width: 145,
                      child: datalist['images'].isEmpty
                          ? Image.asset('./images/nono.png')
                          : Image.network(datalist['images'][0].toString())),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 14),
                    child: Text(
                      datalist["price"].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: black,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 2),
                    child: Text(
                      datalist["adTitle"],
                      style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150, top: 15),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 12,
                        color: black,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.place,
                          size: 15,
                          color: black,
                        ),
                        Text(
                          "Bhaktapur, Thimi",
                          style: TextStyle(
                            fontSize: 12,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
