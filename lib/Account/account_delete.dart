import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/account/api.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<DeleteAccount> {
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
          'Account Delete',
          style: TextStyle(
            fontSize: 18,
            color: black,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 35),
          // Notifications
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Are you sure you want to delete your account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: black,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  """\nDeleting your account is permanent. When you delete your Xchange account, you won't be able to retrieve the content of ads you've shared on Xchange by any means. Your all data related to this app and recommendation will be deleted fully.""",
                  style: TextStyle(
                    fontSize: 18,
                    color: black,
                    fontFamily: 'RobotoCondensed',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Button
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Delete Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                    onPressed: () {
                      alertDialog(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void alertDialog(BuildContext context) {
  var alertDialog = AlertDialog(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    backgroundColor: white,
    title: Center(
      child: Text(
        "Xchange",
        style: TextStyle(
            fontSize: 30,
            color: black,
            fontFamily: 'Arial_Rounded',
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline),
      ),
    ),
    content: Text(
      "Are you definitely sure you want to permanently delete your account.",
      style: TextStyle(
        fontSize: 16,
        color: black,
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('No'),
      ),
      TextButton(
        onPressed: () {
          deleteUserandAds();
          Navigator.pushNamed(context, "/login");
        },
        child: const Text('Yes'),
      )
    ],
  );
  showDialog(
    context: context,
    builder: (buildContext) {
      return alertDialog;
    },
  );
}
