import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

void createBookAndOthersAd(String arguments, int price, String location,
    String adTitle, String description, List<XFile> file) async {
  String carEndPoint = 'http://localhost:8000/' + arguments;

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
