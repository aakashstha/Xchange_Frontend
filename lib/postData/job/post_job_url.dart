import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

var storage = const FlutterSecureStorage();
void createJobAd(
    String arguments,
    String salaryPeriod,
    String positionType,
    String salaryFrom,
    String salaryTo,
    String location,
    int price,
    String adTitle,
    String description,
    List<XFile> file) async {
  String carEndPoint = 'http://localhost:8000/products';
  var userId = await storage.read(key: 'userId');

  List images = [];
  for (var element in file) {
    {
      images.add(await MultipartFile.fromFile(element.path));
    }
  }
  Map<String, dynamic> mapData = {
    "salaryPeriod": salaryPeriod,
    "positionType": positionType,
    "salaryFrom": salaryFrom,
    "salaryTo": salaryTo,
    "location": location,
    "price": price,
    "category": arguments,
    "adTitle": adTitle,
    "description": description,
    "image": images,
    "userId": userId,
  };
  // print(images);

  FormData data = FormData.fromMap(mapData);
  Dio dio = Dio();

  try {
    Response response = await dio.post(carEndPoint, data: data);
    // ignore: avoid_print
    print(response.data);
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
  }
}

void updateJobAd(
    String _id,
    String arguments,
    String salaryPeriod,
    String positionType,
    String salaryFrom,
    String salaryTo,
    String location,
    int price,
    String adTitle,
    String description,
    List<XFile> file) async {
  String carEndPoint = 'http://localhost:8000/products';
  var userId = await storage.read(key: 'userId');

  List images = [];
  for (var element in file) {
    {
      images.add(await MultipartFile.fromFile(element.path));
    }
  }
  Map<String, dynamic> mapData = {
    "salaryPeriod": salaryPeriod,
    "positionType": positionType,
    "salaryFrom": salaryFrom,
    "salaryTo": salaryTo,
    "location": location,
    "price": price,
    "category": arguments,
    "adTitle": adTitle,
    "description": description,
    "image": images,
    "userId": userId,
  };
  // print(images);

  FormData data = FormData.fromMap(mapData);
  Dio dio = Dio();

  try {
    Response response = await dio.put(carEndPoint + '/$_id', data: data);
    // ignore: avoid_print
    print(response.data);
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
  }
}

void deleteJobAd(
  String _id,
) async {
  String carEndPoint = 'http://localhost:8000/products';

  Dio dio = Dio();

  try {
    Response response = await dio.delete(carEndPoint + '/$_id');
    // ignore: avoid_print
    print(response.data);
  } catch (error) {
    // ignore: avoid_print
    print("new awesome " + error.toString());
  }
}
