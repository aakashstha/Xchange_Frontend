import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

class Cars extends StatefulWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
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
          'Cars',
          style: TextStyle(
            fontSize: 18,
            color: black,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Cars for Sale
          const SizedBox(height: 15),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Text(
                'Cars for Sale',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              // ignore: avoid_print
              print("Cars for Sale");
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

          // Cars for Rent
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Text(
                'Cars for Rent',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              // ignore: avoid_print
              print("Cars for Rent");
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

          // Cars Spare Parts
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Text(
                'Cars Spare Parts',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              // ignore: avoid_print
              print("Cars Spare Parts");
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

          // Show All
          const SizedBox(height: 5),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
              child: Text(
                'Show All',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              // ignore: avoid_print
              print("Show All");
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
