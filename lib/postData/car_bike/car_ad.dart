import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xchange_frontend/firstPages/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:xchange_frontend/postData/car_bike/post_car_url.dart';
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;
    print(arguments);

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
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _brandController,
                    decoration: const InputDecoration(
                      hintText: 'Brand*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter brand';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _priceController,
                    decoration: const InputDecoration(
                      hintText: 'Price*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter price';
                      } else if (int.tryParse(value) == null) {
                        return 'Please enter valid price';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _yearController,
                    decoration: const InputDecoration(
                      hintText: 'Year*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter year';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _kmDrivenController,
                    decoration: const InputDecoration(
                      hintText: 'KM driven*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter KM driven';
                      } else if (int.tryParse(value) == null) {
                        return 'Please enter valid KM driven';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  TextFormField(
                    controller: _locationController,
                    decoration: const InputDecoration(
                      hintText: 'Location*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter location';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _adTitleController,
                    maxLength: 80,
                    decoration: const InputDecoration(
                      hintText: 'Ad title*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Ad title';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  TextFormField(
                    maxLines: 3,
                    controller: _descriptionController,
                    maxLength: 5000,
                    decoration: const InputDecoration(
                      hintText: 'Describe the item you are selling*',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter Description';
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey,
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
                  Center(
                    child: Text(
                      "Please add no more then 8 photos here.",
                      style: TextStyle(
                        color: black,
                        fontSize: 12,
                        fontFamily: 'RobotoCondenced',
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
                        onTap: () async {
                          // ignore: avoid_print
                          print('Click');
                          await openCamera();
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

                        // print(imagefiles?.isNotEmpty.toString());

                        var snackBar = const SnackBar(
                          content: Text('Your new ad created successfully!!'),
                        );

                        bool imageEmpty = false;
                        if (imagefiles?.isNotEmpty.toString() == "null") {
                          imageEmpty = false;
                        } else if (imagefiles?.isNotEmpty.toString() ==
                            "true") {
                          imageEmpty = true;
                        }
                        // print(imageEmpty);

                        if (_formKey.currentState!.validate() && !imageEmpty) {
                          int _price = int.parse(_priceController.text);
                          int _kmDriven = int.parse(_kmDrivenController.text);
                          createCarAd(
                              arguments['category'],
                              _brandController.text,
                              _price,
                              _yearController.text,
                              _kmDriven,
                              _locationController.text,
                              _adTitleController.text,
                              _descriptionController.text, []);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else if (_formKey.currentState!.validate() &&
                            imageEmpty) {
                          int _price = int.parse(_priceController.text);
                          int _kmDriven = int.parse(_kmDrivenController.text);
                          createCarAd(
                              arguments['category'],
                              _brandController.text,
                              _price,
                              _yearController.text,
                              _kmDriven,
                              _locationController.text,
                              _adTitleController.text,
                              _descriptionController.text,
                              imagefiles!);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
