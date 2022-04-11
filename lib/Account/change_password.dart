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
  final _formKey = GlobalKey<FormState>();
  bool hideOldPassword = true;
  bool hideNewPassword = true;
  bool hideRetypePassword = true;

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
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  TextFormField(
                    controller: _oldPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Enter Old Password',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          splashColor: Colors.transparent,
                          icon: hideOldPassword
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                          color: spanishGrey,
                          onPressed: () {
                            setState(() {
                              hideOldPassword = !hideOldPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    obscureText: hideOldPassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your old password';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _newPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Enter New Password',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          splashColor: Colors.transparent,
                          icon: hideNewPassword
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                          color: spanishGrey,
                          onPressed: () {
                            setState(() {
                              hideNewPassword = !hideNewPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    obscureText: hideNewPassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your new password';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _retypeNewPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Retype New Password',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                          splashColor: Colors.transparent,
                          icon: hideRetypePassword
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                          color: spanishGrey,
                          onPressed: () {
                            setState(() {
                              hideRetypePassword = !hideRetypePassword;
                            });
                          },
                        ),
                      ),
                    ),
                    obscureText: hideRetypePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please retype your new password';
                      }
                      return null;
                    },
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
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      if (_newPasswordController.text !=
                          _retypeNewPasswordController.text) {
                        var snackBar = const SnackBar(
                          content: Text('Your new password didnot matched!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        return;
                      }

                      var result = await updateUserPassword(
                          _oldPasswordController.text,
                          _newPasswordController.text);

                      if (result != null) {
                        var snackBar = const SnackBar(
                          content: Text(
                              'Your password has been changed successfully!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.pop(context);
                      } else {
                        var snackBar = const SnackBar(
                          content: Text('Your old password did not matched!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
