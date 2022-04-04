import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        // Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Container(
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              color: lightGrey,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.search,
                    color: spanishGrey,
                    size: 26,
                  ),
                ),
                hintText: 'Find anything',
              ),
            ),
          ),
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

        // Real Recommendation Part
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 20),
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        child: Image.asset('./images/macbook.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 2),
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
                      padding: const EdgeInsets.only(left: 10, top: 2),
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
                      padding: const EdgeInsets.only(left: 135, top: 8),
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
                      padding: const EdgeInsets.only(left: 10),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 20),
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        child: Image.asset('./images/macbook.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 2),
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
                      padding: const EdgeInsets.only(left: 10, top: 2),
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
                      padding: const EdgeInsets.only(left: 135, top: 8),
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
                      padding: const EdgeInsets.only(left: 10),
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
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
