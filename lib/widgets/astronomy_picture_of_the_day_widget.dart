import 'package:flutter/material.dart';

import '../api_data/astronomy_picture_of_the_day_api_data.dart';
import '../data_classes/astronomy_picture_of_the_day.dart';

class AstroPictureDetailsWidget extends StatefulWidget {
  const AstroPictureDetailsWidget({super.key});

  @override
  State<AstroPictureDetailsWidget> createState() =>
      _AstroPictureDetailsWidgetState();
}

class _AstroPictureDetailsWidgetState extends State<AstroPictureDetailsWidget> {
  late Future<AstronomyPictureOfTheDay> astroPict;

  @override
  void initState() {
    super.initState();

    astroPict = getAstroPictureOfTheDay();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getAstroPictureOfTheDay(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25, bottom: 14.0, right: 14.0, left: 14.0),
                      child: Text(
                        snapshot.data!.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      snapshot.data!.date,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 420,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            snapshot.data!.url,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      snapshot.data!.explanation,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
