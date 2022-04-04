import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              "Let’s get started!",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 36,
                fontFamily: 'RobotoCondenced',
              ),
            ),
          ),

          // Input Field
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 40, bottom: 10),
            child: Text(
              "Full Name",
              style: TextStyle(
                color: black,
                fontSize: 18,
                fontFamily: 'RobotoCondenced',
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
                      Icons.person_outline,
                      color: spanishGrey,
                      size: 26,
                    ),
                  ),
                  hintText: 'Sashank Dulal',
                ),
              ),
            ),
          ),
          // Email
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 15, bottom: 10),
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
                  hintText: 'sashank@gmail.com',
                ),
              ),
            ),
          ),
          // Password
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 15, bottom: 10),
            child: Text(
              "Password",
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
                      Icons.lock_outline,
                      color: spanishGrey,
                      size: 26,
                    ),
                  ),
                  hintText: '************',
                ),
              ),
            ),
          ),
          // Confirm Password
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 15, bottom: 10),
            child: Text(
              "Confirm Password",
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
                      Icons.lock_outline,
                      color: spanishGrey,
                      size: 26,
                    ),
                  ),
                  hintText: '************',
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 50),
            child: Container(
              height: 60,
              width: 162,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CupertinoButton(
                child: Text(
                  "Sign Up",
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

          // Terms and Condition
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: TextButton(
              child: Text(
                "By signing up, you agree with the Terms of Service and \nPrivacy Policy",
                style: TextStyle(
                  fontSize: 14,
                  color: black,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
              onPressed: () {},
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    color: black,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
                TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: blue,
                      fontFamily: 'RobotoCondensed',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
