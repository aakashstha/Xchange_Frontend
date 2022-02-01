import 'package:flutter/material.dart';
import 'package:xchange_frontend/log_in.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:xchange_frontend/navigation.dart';
import 'package:xchange_frontend/models/login_request.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Classified Application',
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        hintColor: spanishGrey,
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'RobotoCondenced',
          ),
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/logIn': (context) => const Login(),
        '/navigation': (context) => const Navigation(),
        '/loginRequest': (context) => const MyApp1(),
      },
      home: const Scaffold(
        body: Login(),
      ),
    );
  }
}
