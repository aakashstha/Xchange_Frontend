import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';

class RoomOneAd extends StatelessWidget {
  const RoomOneAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            // Image
            SizedBox(
              height: 240,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: InkWell(
                      child: arguments['images'].isEmpty
                          ? Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("./images/nono.png"),
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    arguments['images'][0].toString(),
                                  ),
                                ),
                              ),
                            ),
                      onTap: () {
                        Navigator.pushNamed(context, "/fetchAllImage",
                            arguments: arguments['images']);
                      },
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Positioned(
                    left: 360,
                    top: 210,
                    child: Text(
                      arguments['images'].length == 0
                          ? ""
                          : "1/" + arguments['images'].length.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    arguments['price'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: black,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    arguments['adTitle'],
                    style: TextStyle(
                      fontSize: 20,
                      color: black,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 270, top: 5),
                  child: Text(
                    arguments['date'].toString().substring(0, 10),
                    style: TextStyle(
                      fontSize: 20,
                      color: black,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 25,
                        color: black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        arguments['location'],
                        style: TextStyle(
                          fontSize: 20,
                          color: black,
                          fontFamily: 'RobotoCondensed',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              color: black,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Total Rooms: " + arguments['totalRooms'].toString(),
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Kitchen: " + arguments['kitchen'],
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Toilet: " + arguments['toilet'],
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Water Supply: " + arguments['waterSupply'],
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              arguments['description'],
              style: TextStyle(
                fontSize: 16,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ],
        ),
      ),
    );
  }
}