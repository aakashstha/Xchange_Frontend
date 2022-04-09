import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
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
                child: TextFormField(
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
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
                child: TextFormField(
                  controller: _controllerPassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
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
                      onPressed: () async {
                        // var storage = const FlutterSecureStorage();
                        // var value = await storage.read(key: "email");
                        // print(value);
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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String _userEmail = _controllerEmail.text;
                          String _password = _controllerPassword.text;
                          Map? _loginDetails =
                              await login(_userEmail, _password);

                          print(_loginDetails);
                          var storage = const FlutterSecureStorage();
                          if (_loginDetails != null &&
                              !_loginDetails['confirm']) {
                            var snackBar = const SnackBar(
                              content: Text(
                                  'Your email is not verified Please verify first and try login.'),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else if (_loginDetails != null &&
                              _loginDetails['confirm']) {
                            var token = _loginDetails['token'];
                            var userId = _loginDetails['id'];
                            var email = _loginDetails['email'];

                            await storage.write(key: 'token', value: token);
                            await storage.write(key: 'userId', value: userId);
                            await storage.write(key: 'email', value: email);

                            Navigator.pushNamed(context, "/navigation");
                          } else {
                            var snackBar = const SnackBar(
                              content: Text('Wrong email or password'),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        }
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
      ),
    );
  }

  Future<Map?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://localhost:8000/user/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
