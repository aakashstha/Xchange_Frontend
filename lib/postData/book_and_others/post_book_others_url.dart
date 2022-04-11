import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

var storage = const FlutterSecureStorage();
void createBookAndOthersAd(String arguments, int price, String location,
    String adTitle, String description, List<XFile> file) async {
  String carEndPoint = 'http://localhost:8000/products';
  var userId = await storage.read(key: 'userId');

  List images = [];
  for (var element in file) {
    {
      images.add(await MultipartFile.fromFile(element.path));
    }
  }
  Map<String, dynamic> mapData = {
    "price": price,
    "adTitle": adTitle,
    "description": description,
    "location": location,
    "category": arguments,
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

void updateBookAndOthersAd(
    String _id,
    String arguments,
    int price,
    String location,
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
    "price": price,
    "adTitle": adTitle,
    "description": description,
    "location": location,
    "category": arguments,
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

void deleteBookAndOthersAd(
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
