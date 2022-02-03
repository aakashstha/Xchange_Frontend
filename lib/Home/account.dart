import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, "/editProfile");
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
                "AS",
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
              "Aakash Shrestha",
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
              "user since April 2018",
              style: TextStyle(
                fontSize: 16,
                color: black,
              ),
            ),
          ),
          const SizedBox(height: 40),

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
                    // Navigator.pushNamed(context, "/placeMobileAd");
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
                    // Navigator.pushNamed(context, "/placeMobileAd");
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
                    // Navigator.pushNamed(context, "/placeMobileAd");
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
                    // Navigator.pushNamed(context, "/placeMobileAd");
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
