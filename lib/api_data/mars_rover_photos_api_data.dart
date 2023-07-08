import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_classes/mars_rover_photos.dart';

Future<List<MarsRoverPhotos>> getMarsRoverPhotos() async {
  const key = 'EfXncd17tSfxapwBn7Qnv92NDIA9zA2NfoWCYvKK';
  // const sol = '3000';
  // const page = '5';
  const link =
      'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=3000&page=5&api_key=$key';
  final response = await http.get(Uri.parse(link));
  List<MarsRoverPhotos> marsPhotos = [];
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final data = json['photos'];

    for (var jsondata in data) {
      marsPhotos.addAll([MarsRoverPhotos.fromJson(jsondata)]);
    }
    // print(marsPhotos[24].earth_date);
    return marsPhotos;
  } else {
    throw Exception('Failed to load');
  }
}
