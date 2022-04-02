import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:flutter/cupertino.dart';

class MobileAd extends StatefulWidget {
  const MobileAd({Key? key}) : super(key: key);

  @override
  _MobileAdState createState() => _MobileAdState();
}

class _MobileAdState extends State<MobileAd> {
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
          'Place Your Ad',
          style: TextStyle(
            fontSize: 18,
            color: black,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                "Add Details",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'RobotoCondenced',
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          // Cars
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Brand*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Price*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),

                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Ad title*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "0/80",
                        style: TextStyle(
                          color: black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Describe the item you are selling*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "0/5000",
                        style: TextStyle(
                          color: black,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),

                // Add Phtos Section
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: Text(
                      "Add Photo",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'RobotoCondenced',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.photo_camera,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Click',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print('Click');
                      },
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.add_photo_alternate,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Photo',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print('Photo');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CupertinoButton(
                    child: Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoCondensed',
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }
}
