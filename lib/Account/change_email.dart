import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/account/api.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({Key? key}) : super(key: key);

  @override
  _ChangeEmailState createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  final TextEditingController _newEmailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String arguments = ModalRoute.of(context)?.settings.arguments as String;

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
          'Change Email',
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
                    controller: _newEmailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter new mail',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
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
              padding: const EdgeInsets.only(left: 17, right: 17, top: 50),
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
                      var result = await updateUserEmail(
                        _newEmailController.text,
                      );
                      if (result != null) {
                        var snackBar = const SnackBar(
                          content: Text(
                              'Your email is changed! Please verify your email'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.pushNamed(context, "/login");
                      } else {
                        var snackBar = const SnackBar(
                          content: Text('Something went wrong!'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Center(
              child: Text(
                "Your email is: $arguments",
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
