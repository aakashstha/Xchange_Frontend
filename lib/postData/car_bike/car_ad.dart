import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xchange_frontend/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/postData/post_url.dart';
import 'package:xchange_frontend/postData/gall_cam.dart';
import 'dart:io';

class CarAd extends StatefulWidget {
  const CarAd({Key? key}) : super(key: key);

  @override
  _CarAdState createState() => _CarAdState();
}

class _CarAdState extends State<CarAd> {
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _kmDrivenController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _adTitleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  List<XFile>? imagefiles;

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
                TextFormField(
                  controller: _brandController,
                  decoration: const InputDecoration(
                    hintText: 'Brand*',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _priceController,
                  decoration: const InputDecoration(
                    hintText: 'Price*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _yearController,
                  decoration: const InputDecoration(
                    hintText: 'Year*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _kmDrivenController,
                  decoration: const InputDecoration(
                    hintText: 'KM driven*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                TextField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    hintText: 'Location*',
                  ),
                ),
                Container(
                  height: 1.5,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _adTitleController,
                  decoration: const InputDecoration(
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
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
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
                      onTap: () async {
                        imagefiles = await openGallery();
                        //  print(imagefiles![0].path);
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Selected Images from Gallery
                imagefiles != null
                    ? Wrap(
                        children: imagefiles!.map((imageone) {
                          return Card(
                            child: SizedBox(
                              height: 125,
                              width: 84,
                              child: Image.file(File(imageone.path)),
                            ),
                          );
                        }).toList(),
                      )
                    : Container(),

                const SizedBox(height: 20),
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
                    onPressed: () {
                      // print(_brandController.text);
                      // print(_priceController.text);
                      // print(_yearController.text);
                      // print(_kmDrivenController.text);
                      // print(_locationController.text);
                      // print(_adTitleController.text);
                      // print(_descriptionController.text);

                      if (_brandController.text.isEmpty ||
                          _priceController.text.isEmpty ||
                          _yearController.text.isEmpty ||
                          _kmDrivenController.text.isEmpty ||
                          _locationController.text.isEmpty ||
                          _adTitleController.text.isEmpty ||
                          _descriptionController.text.isEmpty) {
                        print('Text Field is empty, Please Fill All Data');
                      } else {
                        int price = int.parse(_priceController.text);

                        createCarAd(
                            _brandController.text,
                            price,
                            _yearController.text,
                            _kmDrivenController.text,
                            _locationController.text,
                            _adTitleController.text,
                            _descriptionController.text,
                            imagefiles!);
                      }
                    },
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
