
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data_classes/astronomy_picture_of_the_day.dart';

Future<AstronomyPictureOfTheDay> getAstroPictureOfTheDay() async {
  const key = 'EfXncd17tSfxapwBn7Qnv92NDIA9zA2NfoWCYvKK';
  const link = 'https://api.nasa.gov/planetary/apod?api_key=$key';
  final response = await http.get(Uri.parse(link));
  if (response.statusCode == 200) {
    // print(response.body);
    return AstronomyPictureOfTheDay.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}
