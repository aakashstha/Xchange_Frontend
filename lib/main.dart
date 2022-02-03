import 'package:flutter/material.dart';
import 'package:xchange_frontend/login.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:xchange_frontend/navigation.dart';
import 'package:xchange_frontend/signup.dart';
import 'package:xchange_frontend/reset_password.dart';
import 'package:xchange_frontend/Home/home.dart';
import 'package:xchange_frontend/Home/sell.dart';
import 'package:xchange_frontend/Home/my_ads.dart';
import 'package:xchange_frontend/Home/account.dart';

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
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/resetPassword': (context) => const ResetPassword(),

        // main pages in this application
        '/navigation': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/sell': (context) => const Sell(),
        '/myAds': (context) => const MyAds(),
        '/account': (context) => const Account(),

        // Others
      },
      home: const Login(),
    );
  }
}
