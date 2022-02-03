import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
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
                          child: Image.asset('./images/macbook.jpeg'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 14),
                            child: Text(
                              "Rs. 120,000",
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
                              "Macbook Pro 2017 model",
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
          ),
          // Seconde Ad
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 10),
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
                          child: Image.asset('./images/macbook.jpeg'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 14),
                            child: Text(
                              "Rs. 120,000",
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
                              "Macbook Pro 2017 model",
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
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: white,
        child: Icon(
          Icons.notifications,
          color: black,
        ),
        onPressed: () {
          // ignore: avoid_print
          print("Notificatins");
        },
      ),
    );
  }
}
