import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  bool loginTry = false;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 64,
          ),
          Center(
            child: Text(
              "Welcome!",
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
            padding: const EdgeInsets.only(left: 25, top: 70, bottom: 10),
            child: Text(
              "Email",
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
                controller: _controllerEmail,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Icon(
                      Icons.email_outlined,
                      color: spanishGrey,
                      size: 26,
                    ),
                  ),
                  hintText: 'hanuman@gmail.com',
                ),
              ),
            ),
          ),
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
                controller: _controllerPassword,
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
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      splashColor: Colors.transparent,
                      icon: hidePassword
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                      color: spanishGrey,
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                ),
                obscureText: hidePassword,
              ),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 12),
                child: Text(
                  "Remember me",
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190, top: 22),
                child: CupertinoSwitch(
                  value: true,
                  onChanged: (bool value) {},
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 54),
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
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56, top: 54),
                child: Container(
                  height: 60,
                  width: 162,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                    onPressed: () {
                      // login(_controllerEmail.text, _controllerPassword.text);

                      // if (loginTry) {
                      Navigator.pushNamed(context, "/navigation");
                      //  }
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: TextButton(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/forgotPassword");
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://localhost:8000/admin/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );
    //final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      loginTry = true;
      return true;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      loginTry = false;
      return false;
    }
  }
}
