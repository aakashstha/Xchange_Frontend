import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:xchange_frontend/account/api.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _MyAdsState createState() => _MyAdsState();
}

class _MyAdsState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        backgroundColor: HomeColors.appBar,
        title: const Text('Search Result'),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 22.0),
              child: Text('${arguments['result'].length}',
                  style: const TextStyle(fontSize: 18)),
            ),
          )
        ],
      ),
      body: arguments['result'].isNotEmpty
          ? ListView.builder(
              itemCount: arguments['result'].length,
              itemBuilder: (BuildContext context, int index) {
                return getAd(arguments['result'][index], context);
              })
          : Center(
              child: Text(
                "Sorry the serch keyword didn't match any ads. \n\nPlease try searching other keyword.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}

Widget getAd(dynamic datalist, BuildContext context) {
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
      var showUpdateDeleteButton = false;

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
