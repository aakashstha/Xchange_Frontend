import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';

var storage = const FlutterSecureStorage();
Future<Map> getIndividualUser() async {
  var userId = await storage.read(key: 'userId');
  print(userId);

  String userEndPoint = 'http://localhost:8000/user';
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

Future<Map?> updateUserPassword(String oldPassword, String newPassword) async {
  var userId = await storage.read(key: 'userId');

  String userEndPoint = 'http://localhost:8000/user/change_password';

  Map<String, dynamic> mapData = {
    "userId": userId,
    "oldPassword": oldPassword,
    "newPassword": newPassword
  };
  Dio dio = Dio();
  try {
    Response response = await dio.put(userEndPoint, data: mapData);
    // ignore: avoid_print
    print(response.data);

    return response.data;
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
    return null;
  }
}

Future<Map?> updateUserEmail(String newEmail) async {
  var userId = await storage.read(key: 'userId');

  String userEndPoint = 'http://localhost:8000/user/change_email';

  Map<String, dynamic> mapData = {
    "userId": userId,
    "email": newEmail,
  };
  Dio dio = Dio();
  try {
    Response response = await dio.put(userEndPoint, data: mapData);
    // ignore: avoid_print
    print(response.data);

    return response.data;
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
    return null;
  }
}

Future<Map?> signup(String fullName, String email, String password) async {
  String userEndPoint = 'http://localhost:8000/user/signup';

  Map<String, dynamic> mapData = {
    "fullName": fullName,
    "email": email,
    "password": password,
    "bio": "",
    "website": "",
    "dob": "",
  };
  Dio dio = Dio();
  try {
    Response response = await dio.post(userEndPoint, data: mapData);
    // ignore: avoid_print
    print(response.data);

    return response.data;
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
    return null;
  }
}

Future<List<dynamic>> fetchAllUserAds() async {
  var userId = await storage.read(key: 'userId');

  String userEndPoint = "http://localhost:8000/products/user";
  Dio dio = Dio();
  try {
    Response response = await dio.get(userEndPoint + '/$userId');
    print(response.data);
    return response.data['products'];
  } catch (error) {
    // ignore: avoid_print
    print("Error from getting user" + error.toString());
    throw Exception('Failed to load post');
  }
}

Future<List<dynamic>> getRecommendation() async {
  // var userId = await storage.read(key: 'userId');

  String userEndPoint = "http://localhost:8000/products/recommendation/python";
  Dio dio = Dio();
  try {
    Response response =
        await dio.post(userEndPoint, data: {"adTitle": "Ntorq2"});
    // print(response.data['recommendedProduct']);
    return response.data['recommendedProduct'];
  } catch (error) {
    // ignore: avoid_print
    print("Error from getting user" + error.toString());
    throw Exception('Failed to load post');
  }
}
