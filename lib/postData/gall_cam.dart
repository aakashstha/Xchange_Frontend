import 'package:image_picker/image_picker.dart';

final ImagePicker imgpicker = ImagePicker();

Future<List<XFile>?> openGallery() async {
  var pickedfiles = await imgpicker.pickMultiImage();

  if (pickedfiles != null) {
    return pickedfiles;
  } else {
    // ignore: avoid_print
    print("No image is selected.");
  }
}
