import 'package:flutter/material.dart';

import '../api_data/earth_polychromatic_image_api_data.dart';
import '../data_classes/earth_polychromatic_image.dart';

class EarthPolychromaticImageDetailsWidget extends StatefulWidget {
  const EarthPolychromaticImageDetailsWidget({super.key});

  @override
  State<EarthPolychromaticImageDetailsWidget> createState() =>
      _EarthPolychromaticImageDetailsWidgetState();
}

class _EarthPolychromaticImageDetailsWidgetState
    extends State<EarthPolychromaticImageDetailsWidget> {
  late Future<List<EarthPolychromaticImage>> earthPolychrom;

  @override
  void initState() {
    super.initState();
    earthPolychrom = getEarthPolychromaticImage();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: earthPolychrom,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, bottom: 14.0, right: 5.0, left: 14.0),
                        child: Center(
                          child: Text(
                            snapshot.data![index].caption,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        'Date - ${snapshot.data![index].date}',
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
                              'https://epic.gsfc.nasa.gov/archive/enhanced/2023/07/01/png/${snapshot.data![index].image}.png',
                              fit: BoxFit.fill,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Identifier - ${snapshot.data![index].identifier}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ],
                  );
                });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
