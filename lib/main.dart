import 'package:flutter/material.dart';
import 'package:flutter_countries/screens/astronomy_picture_of_the_day_screen.dart';
import 'package:flutter_countries/screens/earth_polychromatic_image_screens.dart';
import 'package:flutter_countries/screens/screen_of_features.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FeaturesScreen(),
        '/second': (context) => const AstroPictScreen(),
        '/third': (context) => const EarthPolychromaticScreen(),
      },
    ),
  );
}
