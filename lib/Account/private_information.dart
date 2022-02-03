import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

class PrivateInformation extends StatefulWidget {
  const PrivateInformation({Key? key}) : super(key: key);

  @override
  _PrivateInformationState createState() => _PrivateInformationState();
}

class _PrivateInformationState extends State<PrivateInformation> {
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
                  onTap: () {
                    Navigator.pushNamed(context, "/changeEmail");
                  },
                ),
              ),

              // Change Phone Number
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
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
                            const Icon(Icons.phone_iphone, size: 26),
                            const SizedBox(width: 10),
                            Text(
                              'Change Phone Number',
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
                  onTap: () {
                    Navigator.pushNamed(context, "/changePhoneNumber");
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
                        const Icon(Icons.male, size: 26),
                        const SizedBox(width: 10),
                        Text(
                          'Male',
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
                    // Navigator.pushNamed(context, "/changeEmail");
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
