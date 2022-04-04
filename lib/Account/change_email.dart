import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({Key? key}) : super(key: key);

  @override
  _ChangeEmailState createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
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
          'Change Email',
          style: TextStyle(
            fontSize: 18,
            color: black,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter new mail',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          // Button
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 50),
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CupertinoButton(
                child: Text(
                  "Change",
                  style: TextStyle(
                    fontSize: 16,
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),

          // Done
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter code',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "6 digit code has been sent to your new mail",
                      style: TextStyle(
                        fontSize: 16,
                        color: black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Button
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 50),
            child: Container(
              width: 380,
              height: 60,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CupertinoButton(
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 16,
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
