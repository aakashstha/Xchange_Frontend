import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

void createCarAd(
    String brand,
    int price,
    String year,
    String kmDriven,
    String location,
    String adTitle,
    String description,
    List<XFile> file) async {
  const String carEndPoint = 'http://localhost:8000/cars';

  List images = [];
  for (var element in file) {
    {
      images.add(await MultipartFile.fromFile(element.path));
    }
  }
  Map<String, dynamic> mapData = {
    "brand": "Tesla112233",
    "price": "500000011223344",
    "year": "2010",
    "kmDriven": "5000",
    "adTitle": "Tesla A45112233344",
    "description": "This is awesome car after apple very good",
    "location": "Biratnagar",
    "image": images
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
