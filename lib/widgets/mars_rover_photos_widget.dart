import 'package:flutter/material.dart';

import '../api_data/mars_rover_photos_api_data.dart';
import '../data_classes/mars_rover_photos.dart';

class MarsRoverPhotosDetailsWidget extends StatefulWidget {
  const MarsRoverPhotosDetailsWidget({super.key});

  @override
  State<MarsRoverPhotosDetailsWidget> createState() =>
      _MarsRoverPhotosDetailsWidgetState();
}

class _MarsRoverPhotosDetailsWidgetState
    extends State<MarsRoverPhotosDetailsWidget> {
  late Future<List<MarsRoverPhotos>> marsPhotos;

  @override
  void initState() {
    super.initState();
    marsPhotos = getMarsRoverPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: marsPhotos,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 14.0, right: 5.0, left: 14.0),
                        child: Center(
                          child: Text(
                           'Sol - ${snapshot.data![index].sol.toString()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        'Eart date - ${snapshot.data![index].earth_date}',
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
                              snapshot.data![index].img_src,
                              fit: BoxFit.fill,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Photo ID - ${snapshot.data![index].id}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      Divider(color: Colors.red,)
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
