import 'package:flutter/material.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:xchange_frontend/account/api.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  bool updateOnce = true;

  @override
  Widget build(BuildContext context) {
    List argumentData = ModalRoute.of(context)?.settings.arguments as List;
    Map argument = argumentData[0];
    String twoCharacter = argumentData[1];
    String _id = argument['_id'];

    if (updateOnce) {
      _fullNameController.text = argument['fullName'];
      _bioController.text = argument['bio'];
      _websiteController.text = argument['website'];
      _dobController.text = argument['dob'];
      updateOnce = false;
    }
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
            onPressed: () {
              // print("Updated");
              updateIndividualUser(
                _id,
                _fullNameController.text,
                _bioController.text,
                _websiteController.text,
                _dobController.text,
              );
              Navigator.pop(context);
            },
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
                twoCharacter,
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
                TextField(
                  controller: _fullNameController,
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: _bioController,
                  decoration: const InputDecoration(
                    hintText: 'Bio',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: _websiteController,
                  decoration: const InputDecoration(
                    hintText: 'Website',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: _dobController,
                  decoration: const InputDecoration(
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
