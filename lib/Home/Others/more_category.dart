import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';

class MoreCategory extends StatefulWidget {
  const MoreCategory({Key? key}) : super(key: key);

  @override
  _MoreCategoryState createState() => _MoreCategoryState();
}

class _MoreCategoryState extends State<MoreCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: HomeColors.appBar,
        title: Text(
          'All Categories',
          style: TextStyle(
            fontSize: 18,
            color: black,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 15),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.cars,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.drive_eta,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Cars',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'cars'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Bikes
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.bikes,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.two_wheeler,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Bikes',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'bikes'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Properties
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.properties,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.apartment,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Properties',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'properties'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Jobs
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.jobs,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.work,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Jobs',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'jobs'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Rooms
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.rooms,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.hotel,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Rooms',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'rooms'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Books
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.books,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.book,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Books',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'books'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Services
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.services,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.build,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Services',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'services'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Electronics
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.electronics,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.computer,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Electronics',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'electronics'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Mobiles
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.mobiles,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.phone_iphone,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Mobiles',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'mobiles'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),

          // Musical Instruments
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: HomeColors.musicalInstruments,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.music_note_rounded,
                          size: 20,
                          color: white,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Musical Instruments',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 26,
                    color: black,
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/fetchAllBuyAds",
                  arguments: {'category': 'musicInstruments'});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              height: 1.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
