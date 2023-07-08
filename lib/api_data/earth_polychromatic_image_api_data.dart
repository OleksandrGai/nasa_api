import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../data_classes/earth_polychromatic_image.dart';

List<EarthPolychromaticImage> parseImage(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
      .map<EarthPolychromaticImage>(
          (json) => EarthPolychromaticImage.fromJson(json))
      .toList();
}

Future<List<EarthPolychromaticImage>> getEarthPolychromaticImage(
    http.Client client) async {
  const key = 'EfXncd17tSfxapwBn7Qnv92NDIA9zA2NfoWCYvKK';
  const link =
      'https://api.nasa.gov/EPIC/api/enhanced/date/2023-07-01?api_key=$key';
  final response = await client.get(Uri.parse(link));
  return compute(parseImage, response.body);
}
/*
Future<List<EarthPolychromaticImage>> getEarthPolychromaticImage() async {
  const key = 'EfXncd17tSfxapwBn7Qnv92NDIA9zA2NfoWCYvKK';
  const link =
      'https://api.nasa.gov/EPIC/api/enhanced/date/2023-07-01?api_key=$key';
  final response = await http.get(Uri.parse(link));
  List<EarthPolychromaticImage> earthPolIm = [];
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    print(json.runtimeType);
    for (var jsondata in json) {
      earthPolIm.addAll([EarthPolychromaticImage.fromJson(jsondata)]);
    }
    return earthPolIm;
  } else {
    throw Exception('Failed to load');
  }
}
*/
