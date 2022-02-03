import 'package:flutter/material.dart';
import 'package:xchange_frontend/theme_colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.shade400,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          TextButton(
            child: const Text(
              "Done",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: 414,
            height: 325,
            decoration: BoxDecoration(
              color: iosToggle,
            ),
            child: Center(
              child: Text(
                "AS",
                style: TextStyle(
                  fontSize: 80,
                  color: white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Bio',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Website',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Date of Birth',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
