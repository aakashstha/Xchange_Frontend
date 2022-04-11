import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
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
          'Invite Friends',
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

          // Invite WhatsApp Friends
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
                            SvgPicture.asset(
                              'images/whatsapp.svg',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Invite WhatsApp Friends',
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
                    await share();
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

              // Invite Facebook Friends
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
                            SvgPicture.asset(
                              'images/facebook.svg',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Invite Facebook Friends',
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
                    await share();
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

              // Invite via SMS
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
                            const Icon(Icons.textsms_outlined),
                            const SizedBox(width: 10),
                            Text(
                              'Invite via SMS',
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
                    await share();
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

              // More
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
                            SvgPicture.asset(
                              'images/more.svg',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'More',
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
                    await share();
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

Future<void> share() async {
  await Share.share(
    'Hello,\nXchange is a simple and secure app that allows me to easily buy and sell any products online.\n\nDownload Xchange app from the link below:\nhttps://apps.apple.com/np/app/xchange-buy-sell-app/id116378676698',
  );
}
