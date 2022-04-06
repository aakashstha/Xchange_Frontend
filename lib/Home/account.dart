import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/account/api.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String userEmail = 'sagar@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FutureBuilder<Map>(
            future: getIndividualUser(userEmail),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                // print(snapshot.data);
                return profileDesign(context, snapshot.data);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          // Setting
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Column(
              children: [
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.settings, size: 26),
                        const SizedBox(width: 10),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Private Information
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.lock_rounded, size: 26),
                        const SizedBox(width: 10),
                        Text(
                          'Private Information',
                          style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/privateInformation");
                  },
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Invite Friends
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.person_add, size: 26),
                        const SizedBox(width: 10),
                        Text(
                          'Invite Friends',
                          style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/inviteFriends");
                  },
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                // Help
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const Icon(Icons.help_rounded, size: 26),
                        const SizedBox(width: 10),
                        Text(
                          'Help',
                          style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/help");
                  },
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: CupertinoButton(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 18,
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget profileDesign(BuildContext context, Map userData) {
  // print(userData['dateCreated']);

  // For Profile Name
  var fullName = userData['fullName'].split(' ');
  var character1 = fullName[0].substring(0, 1);
  var character2 = fullName[1].substring(0, 1);

  // For User Created Date
  var year = userData['dateCreated'].toString().substring(0, 4);
  int monthNumber =
      int.parse(userData['dateCreated'].toString().substring(5, 7));

  const Map<int, String> monthsInYear = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December"
  };

  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/editProfile",
              arguments: [userData, "$character1$character2"],
            );
          },
        ),
      ],
    ),
    Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: iosToggle,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "$character1$character2",
          style: TextStyle(
            fontSize: 35,
            color: white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    const SizedBox(height: 10),
    Center(
      child: Text(
        userData['fullName'],
        style: TextStyle(
          fontSize: 20,
          color: black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const SizedBox(height: 2),
    Center(
      child: Text(
        "user since ${monthsInYear[monthNumber]} $year",
        style: TextStyle(
          fontSize: 16,
          color: black,
        ),
      ),
    ),
    const SizedBox(height: 40),
  ]);
}
