import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/account/api.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _retypeNewPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool hideNewPassword = true;
  bool hideRetypePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
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
              padding: const EdgeInsets.only(left: 25, top: 40),
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
                child: TextFormField(
                  controller: _emailController,
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
            const SizedBox(
              height: 10,
            ),

            // Input Field Password
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25, bottom: 10),
              child: Text(
                "New Password",
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
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        Icons.email_outlined,
                        color: spanishGrey,
                        size: 26,
                      ),
                    ),
                    hintText: '*********',
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
                      return 'Please enter your New password';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 25, bottom: 10),
              child: Text(
                "Retype New Password",
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
                  controller: _retypeNewPasswordController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        Icons.email_outlined,
                        color: spanishGrey,
                        size: 26,
                      ),
                    ),
                    hintText: '*********',
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
                      return 'Please enter your Retype password';
                    }
                    return null;
                  },
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
                    "Send",
                    style: TextStyle(
                      fontSize: 16,
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoCondensed',
                    ),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~]).{8,}$');

                      if (_newPasswordController.text !=
                          _retypeNewPasswordController.text) {
                        var snackBar = const SnackBar(
                          content: Text('Your new password didnot matched!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        return;
                      } else if (_newPasswordController.text.length < 8 ||
                          !regex.hasMatch(_newPasswordController.text)) {
                        var snackBar = const SnackBar(
                          content: Text(
                              'Your password should be atleast 8 characters long, one upper case and one Special character'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        return;
                      }
                      try {
                        var result = await resetPassword(
                            _emailController.text, _newPasswordController.text);

                        if (regex.hasMatch(_newPasswordController.text)) {
                          var snackBar = const SnackBar(
                            content: Text(
                                'Your password is reset successful! Please verify your email and login'),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          Navigator.pop(context);
                        }
                      } catch (error) {
                        var snackBar = const SnackBar(
                          content:
                              Text('We donot found this mail in the database!'),
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
