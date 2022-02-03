import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 360, top: 5),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
            child: Text(
              "Reset your password!",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 36,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 60),
            child: Text(
              "Get help signing in!",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 5),
            child: Text(
              "Enter the email address associated \nwith your account.",
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),
          // Input Field Email
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 25, bottom: 10),
            child: Text(
              "Email",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Container(
              height: 50,
              width: 380,
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Icon(
                      Icons.email_outlined,
                      color: spanishGrey,
                      size: 26,
                    ),
                  ),
                  hintText: 'example@gmail.com',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "We will send activation link in this email.",
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 174),
            child: Container(
              height: 60,
              width: 162,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CupertinoButton(
                child: Text(
                  "Send",
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
