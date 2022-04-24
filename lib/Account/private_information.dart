import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:xchange_frontend/account/api.dart';

class PrivateInformation extends StatefulWidget {
  const PrivateInformation({Key? key}) : super(key: key);

  @override
  _PrivateInformationState createState() => _PrivateInformationState();
}

class _PrivateInformationState extends State<PrivateInformation> {
  var gender = ["Male", "Female", "Other"];
  var genderSymbol = [Icons.male, Icons.female, Icons.transgender];
  var changeGender = 0;

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    print(arguments['gender']);
    if (arguments['gender'] == "Male") {
      changeGender = 0;
    } else if (arguments['gender'] == "Female") {
      changeGender = 1;
    } else if (arguments['gender'] == "Other") {
      changeGender = 0;
    }

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
          'Private Information',
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
          // Change Email
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.email, size: 26),
                            const SizedBox(width: 10),
                            Text(
                              'Change Email',
                              style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontFamily: 'RobotoCondensed',
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 26,
                          color: black,
                        )
                      ],
                    ),
                  ),
                  onTap: () async {
                    var storage = const FlutterSecureStorage();
                    var email = await storage.read(key: 'email');
                    Navigator.pushNamed(context, "/changeEmail",
                        arguments: email);
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),

              // Male
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Icon(genderSymbol[changeGender], size: 26),
                        const SizedBox(width: 10),
                        Text(
                          arguments['gender'],
                          style: TextStyle(
                            fontSize: 18,
                            color: black,
                            fontFamily: 'RobotoCondensed',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showAdaptiveActionSheet(
                      context: context,
                      actions: <BottomSheetAction>[
                        BottomSheetAction(
                          title: const Text('Male'),
                          onPressed: () {
                            setState(() {
                              changeGender = 0;
                            });
                            updateIndividualUser(
                              arguments['_id'],
                              arguments['fullName'],
                              arguments['bio'],
                              arguments['website'],
                              arguments['dob'],
                              gender[changeGender],
                            );
                            Navigator.pop(context);
                            // Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: const Text('Female'),
                          onPressed: () {
                            setState(() {
                              changeGender = 1;
                            });
                            updateIndividualUser(
                              arguments['_id'],
                              arguments['fullName'],
                              arguments['bio'],
                              arguments['website'],
                              arguments['dob'],
                              gender[changeGender],
                            );
                            Navigator.pop(context);
                            // Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: const Text('Other'),
                          onPressed: () {
                            setState(() {
                              changeGender = 2;
                            });
                            updateIndividualUser(
                              arguments['_id'],
                              arguments['fullName'],
                              arguments['bio'],
                              arguments['website'],
                              arguments['dob'],
                              gender[changeGender],
                            );
                            Navigator.pop(context);
                            // Navigator.pop(context);
                          },
                        ),
                      ],
                      cancelAction: CancelAction(
                        title: const Text('Cancel'),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
