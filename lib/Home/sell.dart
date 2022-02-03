import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

class Sell extends StatefulWidget {
  const Sell({Key? key}) : super(key: key);

  @override
  _SellState createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "What would you like to sell?",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                color: HomeColors.urgentSale,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(children: [
                  Icon(
                    Icons.flight_takeoff,
                    size: 40,
                    color: white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Urgent Sale",
                          style: TextStyle(
                            fontSize: 20,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Sell anything immediately.",
                          style: TextStyle(
                            fontSize: 14,
                            color: white,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          const SizedBox(height: 40),
          // Normal Sell
          Center(
            child: Text(
              "Normal Sell",
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 2),
          Center(
            child: Text(
              "choose from category",
              style: TextStyle(
                fontSize: 16,
                color: black,
              ),
            ),
          ),
          const SizedBox(height: 20),
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
              // ignore: avoid_print
              print("Cars");
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
              // ignore: avoid_print
              print("Bikes");
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
              // ignore: avoid_print
              print("Properties");
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
              // ignore: avoid_print
              print("Jobs");
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
              // ignore: avoid_print
              print("Rooms");
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
              // ignore: avoid_print
              print("Books");
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
              // ignore: avoid_print
              print("Services");
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
              // ignore: avoid_print
              print("Electronics");
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
              // ignore: avoid_print
              print("Mobiles");
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
              // ignore: avoid_print
              print("Musical Instruments");
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
