import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

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
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
              ),
            ],
          )
        ],
      ),
    );
  }
}
