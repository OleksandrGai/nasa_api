import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_classes/earth_polychromatic_image.dart';

Future<List<EarthPolychromaticImage>> getEarthPolychromaticImage() async {
  const key = 'EfXncd17tSfxapwBn7Qnv92NDIA9zA2NfoWCYvKK';
  const link =
      'https://api.nasa.gov/EPIC/api/enhanced/date/2023-07-01?api_key=$key';
  final response = await http.get(Uri.parse(link));
  List<EarthPolychromaticImage> earthPolIm = [];
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    for (var jsondata in json) {
      earthPolIm.addAll([EarthPolychromaticImage.fromJson(jsondata)]);
    }
    return earthPolIm;
  } else {
    throw Exception('Failed to load');
  }
}
