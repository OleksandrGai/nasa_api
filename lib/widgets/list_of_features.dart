import 'package:flutter/material.dart';

import '../screens/astronomy_picture_of_the_day_screen.dart';
import '../screens/earth_polychromatic_image_screens.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: const Color(0xFF061F4A),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red, width: 3)),
            child: const Align(
              child: Text(
                'Astronomy Picture of the Day',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 15.0, right: 15, top: 10, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: const Color(0xFF061F4A),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red, width: 3)),
            child: const Align(
              child: Text(
                'Earth Polychromatic Imaging Camera',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

// FutureBuilder<AstronomyPictureOfTheDay>(
// future: astroPict,
// builder: (context, snapshot) {
// return
// },
// ),
