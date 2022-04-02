import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> createCarAd(
    String brand,
    int price,
    String year,
    String kmDriven,
    String location,
    String adTitle,
    String description) async {
  var map = Map<String, dynamic>();

  map['brand'] = 'username';
  map['price'] = 'password';
  map["year"] = year;
  map["kmDriven"] = kmDriven;
  map["adTitle"] = adTitle;
  map["description"] = description;
  map["location"] = location;

  final response = await http.post(
    Uri.parse("http://localhost:8000/cars"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(map),

    // {
    //   "brand": brand,
    //   "price": price,
    //   "year": year,
    //   "kmDriven": kmDriven,
    //   "adTitle": adTitle,
    //   "description": description,
    //   "location": location
    // },
  );
  print(response.body);

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return "Success";
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create album.');
  }
}

Future<String> createCarAd1() async {
  var map = Map<dynamic, dynamic>();

  map['brand'] = "Maruti Sujuki";
  map['price'] = "1200";
  map["year"] = "year";
  map["kmDriven"] = "1200";
  map["adTitle"] = "adTitle";
  map["description"] = "description";
  map["location"] = "location";

  final response = await http.post(
    Uri.parse("http://localhost:8000/cars"),
    // headers: <String, String>{
    //   'Content-Type': 'application/json; charset=UTF-8',
    // },
    // headers: <String, String>{
    //   'Content-Type': 'application/x-www-form-urlencoded',
    // },
    body: {
      "brand": "Maruti Sujuki",
      "price": "1200",
      "year": "year",
      "kmDriven": "1200",
      "adTitle": "adTitle",
      "description": "description",
      "location": "location"
    },

    // jsonEncode(
    //   <String, dynamic>{
    //     "brand": "brand",
    //     "price": 1200,
    //     "year": "year",
    //     "kmDriven": 1200,
    //     "adTitle": "adTitle",
    //     "description": "description",
    //     "location": "location"
    //   },
    // ),
  );
  print(response.body);

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return "Success";
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('!!Failed to create Car ad.');
  }
}
