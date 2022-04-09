import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter_svg/svg.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
          'Help',
          style: TextStyle(
            fontSize: 18,
            color: black,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            Text(
              "If you need any help or \nwant to drop some feedback then \nplease mail us at:\n",
              style: TextStyle(
                fontSize: 18,
                color: black,
                fontFamily: 'RobotoCondensed',
              ),
            ),
            Text(
              "xchangeteam@gmail.com",
              style: TextStyle(
                fontSize: 18,
                color: black,
                decoration: TextDecoration.underline,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
