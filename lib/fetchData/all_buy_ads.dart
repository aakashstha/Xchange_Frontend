import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:xchange_frontend/theme_colors.dart';

class AllBuyAds extends StatelessWidget {
  const AllBuyAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    // print(arguments['category']);
    final response =
        Uri.parse("http://localhost:8000/" + arguments['category']);
    Future<List<dynamic>> fetchMobileAds() async {
      var result = await http.get(response);

      return jsonDecode(result.body)[arguments['category']];
    }

    String appBarText = "All " +
        arguments['category'][0].toString().toUpperCase() +
        arguments['category'].substring(1);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: HomeColors.appBar,
        title: Text(appBarText),
        actions: [Center(child: Text("6"))],
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchMobileAds(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  // print(snapshot.data[index]["images"]);
                  // return Icon(Icons.ac_unit);
                  return getAd(
                      snapshot.data[index], context, arguments['category']);
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

Widget getAd(dynamic datalist, BuildContext context, String category) {
  String fetchRoute = '';
  if (category == 'cars') {
    fetchRoute = '/fetchOneCarAd';
  } else if (category == 'bikes') {
    fetchRoute = '/fetchOneCarAd';
  } else if (category == 'mobiles') {
    fetchRoute = '/fetchOneMobileAd';
  } else if (category == 'properties') {
    fetchRoute = '/fetchOnePropertyAd';
  }

  return InkWell(
    onTap: () {
      Navigator.pushNamed(
        context,
        fetchRoute,
        arguments: datalist,
      );
    },
    child: Row(
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
                          : Image.network(datalist['images'][0].toString()),
                    ),
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
                      padding: const EdgeInsets.only(left: 120, top: 15),
                      child: Text(
                        datalist['date'].toString().substring(0, 10),
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
                            datalist['location'],
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
    ),
  );
}
