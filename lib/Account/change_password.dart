import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
          'Change Password',
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
                    hintText: 'Enter Old Password',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter New Password',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Retype New Password',
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
            padding: const EdgeInsets.only(left: 17, right: 17, top: 166),
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
        ],
      ),
    );
  }
}