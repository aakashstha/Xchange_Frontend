import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/account/api.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _retypeNewPasswordController =
      TextEditingController();

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
                TextField(
                  controller: _oldPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter Old Password',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: _newPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter New Password',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: _retypeNewPasswordController,
                  decoration: const InputDecoration(
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
                onPressed: () {
                  print(_oldPasswordController.text);
                  print(_newPasswordController.text);
                  print(_retypeNewPasswordController.text);

                  updateUserPassword("624d77ad604cdd7330dd68ef",
                      _oldPasswordController.text, _newPasswordController.text);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
