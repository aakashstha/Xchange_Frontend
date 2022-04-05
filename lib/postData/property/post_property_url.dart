import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

void createPropertyAd(
    String arguments,
    String type,
    String bedrooms,
    String bathrooms,
    String furnishing,
    String listedBy,
    String totalFloors,
    String area,
    String facing,
    String location,
    int price,
    String adTitle,
    String description,
    List<XFile> file) async {
  String carEndPoint = 'http://localhost:8000/products';

  List images = [];
  for (var element in file) {
    {
      images.add(await MultipartFile.fromFile(element.path));
    }
  }
  Map<String, dynamic> mapData = {
    "type": type,
    "bedrooms": bedrooms,
    "bathrooms": bathrooms,
    "furnishing": furnishing,
    "listedBy": listedBy,
    "totalFloors": totalFloors,
    "area": area,
    "facing": facing,
    "location": location,
    "category": arguments,
    "price": price,
    "adTitle": adTitle,
    "description": description,
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
