import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

Future<Map> getIndividualUser(
  String userId,
) async {
  String userEndPoint = 'http://localhost:8000/user/';

  Dio dio = Dio();

  try {
    Response response = await dio.get(userEndPoint + '/$userId');
    // print(response.data);
    return response.data;
  } catch (error) {
    // ignore: avoid_print
    print("Error from getting user" + error.toString());
    throw Exception('Failed to load post');
  }
}

void updateIndividualUser(
    String _id, String fullName, String bio, String website, String dob) async {
  String userEndPoint = 'http://localhost:8000/user';

  // List images = [];
  // for (var element in file) {
  //   {
  //     images.add(await MultipartFile.fromFile(element.path));
  //   }
  // }
  Map<String, dynamic> mapData = {
    "fullName": fullName,
    "bio": bio,
    "website": website,
    "dob": dob,
  };

  // FormData data = FormData.fromMap(mapData);
  // No need to convert into FormData Here
  Dio dio = Dio();

  try {
    Response response = await dio.put(userEndPoint + '/$_id', data: mapData);
    // ignore: avoid_print
    print(response.data);
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
  }
}

void updateUserPassword(
    String _id, String oldPassword, String newPassword) async {
  String userEndPoint = 'http://localhost:8000/user/change_password';

  Map<String, dynamic> mapData = {
    "oldPassword": oldPassword,
    "newPassword": newPassword
  };

  Dio dio = Dio();
  try {
    Response response = await dio.put(userEndPoint + '/$_id', data: mapData);
    // ignore: avoid_print
    print(response.data);
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
  }
}
