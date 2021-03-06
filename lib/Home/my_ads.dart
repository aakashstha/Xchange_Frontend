import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:xchange_frontend/account/api.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: fetchAllUserAds(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return snapshot.data.isNotEmpty
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return getAd(snapshot.data[index], context);
                    })
                : Center(
                    child: Text("You have not uploaded any ads so far.",
                        style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: white,
      //   child: Icon(
      //     Icons.notifications,
      //     color: black,
      //   ),
      //   onPressed: () {
      //     // ignore: avoid_print
      //     print("Notificatins");
      //   },
      // ),
    );
  }
}

Widget getAd(dynamic datalist, BuildContext context) {
  // List a = datalist['images'];
  // print(datalist["adTitle"].length);
  // // print(a[0] == '[]');
  // print(datalist['images'][0] == "");
  // a.clear();
  // if (a[0] == '[]') {
  //   a.clear();
  // } else {
  //   a.add(datalist['images']);
  // }
  String fetchRoute = '';
  String category = datalist['category'];

  if (category == 'cars' || category == 'bikes') {
    fetchRoute = '/fetchOneCarAd';
  } else if (category == 'mobiles') {
    fetchRoute = '/fetchOneMobileAd';
  } else if (category == 'properties') {
    fetchRoute = '/fetchOnePropertyAd';
  } else if (category == 'jobs') {
    fetchRoute = '/fetchOneJobAd';
  } else if (category == 'rooms') {
    fetchRoute = '/fetchOneRoomAd';
  } else if (category == 'books' ||
      category == 'services' ||
      category == 'electronics' ||
      category == 'musicInstruments') {
    fetchRoute = '/fetchOneBookAd';
  }

  return InkWell(
    onTap: () {
      var showUpdateDeleteButton = true;

      Navigator.pushNamed(
        context,
        fetchRoute,
        arguments: [datalist, showUpdateDeleteButton],
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
                        datalist["adTitle"].length <= 20
                            ? datalist["adTitle"].toString()
                            : datalist["adTitle"].toString().substring(0, 20),
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
