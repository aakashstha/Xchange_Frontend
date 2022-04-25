import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:xchange_frontend/account/api.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    return ListView(
      children: [
        const SizedBox(height: 30),
        // Search Bar
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                height: 40,
                width: 315,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.search,
                        color: spanishGrey,
                        size: 26,
                      ),
                    ),
                    hintText: 'Find any ads',
                  ),
                ),
              ),
            ),
            TextButton(
              child: const Text("Search"),
              onPressed: () async {
                final String searchKeyword = _searchController.text;
                if (searchKeyword.isEmpty) {
                  var snackBar = const SnackBar(
                    content: Text(
                        'The Empty search cannot be made. Pleae type any ads name.'),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  var result = await search(searchKeyword);

                  if (result['result'].isNotEmpty) {
                    var keyword = result['result'][0]['_id'];
                    print(result['result'][0]['adTitle']);

                    await storage.write(key: 'adIdRecommend', value: keyword);
                    // print(result['result'][0]['adTitle']);
                  }

                  // var a = await storage.read(key: 'adIdRecommend');
                  // print(a);

                  Navigator.pushNamed(context, "/search", arguments: result);
                }
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 17, top: 25, bottom: 25),
          child: Text(
            "Browse by Category",
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'RobotoCondenced',
            ),
          ),
        ),
        // List of Category
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.cars,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.drive_eta, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'cars'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Cars',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.bikes,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.two_wheeler, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'bikes'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Bikes',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.properties,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.apartment, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'properties'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Properties',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.jobs,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.work, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'jobs'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jobs',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.rooms,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.hotel, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'rooms'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Rooms',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.books,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.book, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'books'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Books',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.services,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.build, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'services'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Services',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HomeColors.electronics,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.computer, size: 40, color: white),
                      onPressed: () {
                        Navigator.pushNamed(context, "/fetchAllBuyAds",
                            arguments: {'category': 'electronics'});
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Electronics',
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),

        // More
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 10),
          child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Text(
                    'More',
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(Icons.double_arrow_rounded),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, "/moreCategory");
            },
          ),
        ),

        // Recommendation for you
        const SizedBox(height: 10),
        Center(
          child: Text(
            "Recommendation for You",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: black,
              fontFamily: 'RobotoCondensed',
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Real Recommendation Part
        FutureBuilder<List>(
          future: getRecommendation(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            //  print(snapshot.data);
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return getRecommendedAd(snapshot.data[index], context);
                  },
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

/*










*/
Widget getRecommendedAd(dynamic datalist, BuildContext context) {
  // print(datalist);
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
    child: Container(
      width: 182,
      height: 200,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ClipRRect(
              child: SizedBox(
                width: 145,
                height: 100,
                child: datalist['images'].isEmpty
                    ? Image.asset('./images/nono.png')
                    : Image.network(datalist['images'][0].toString()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: Text(
              datalist['price'].toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 0),
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
            padding: const EdgeInsets.only(left: 105, top: 2),
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
            padding: const EdgeInsets.only(left: 10),
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
      ),
    ),
  );
}
