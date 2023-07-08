class MarsRoverPhotos {
  MarsRoverPhotos({
    required this.id,
    required this.img_src,
  //  required this.camera,
    required this.sol,
    required this.earth_date,
  });

  final int id;
  final int sol;
 // final Camera camera;
  final String img_src;
  final String earth_date;

  factory MarsRoverPhotos.fromJson(Map<String, dynamic> json) {
    return MarsRoverPhotos(
      id: json['id'] as int,
      img_src: json['img_src'],
   //   camera: json['camera'] ,
      sol: json['sol'] as int,
      earth_date: json['earth_date'] as String,
    );
  }
}

class Camera {
  Camera({
    required this.id,
    required this.rover_id,
    required this.name,
    required this.full_name,
  });

  final int id;
  final String name;
  final int rover_id;
  final String full_name;

  factory Camera.fromJson(Map<String, dynamic> json) {
    return Camera(
      id: json['id'] as int,
      rover_id: json['rover_id'] as int,
      name: json['name'] as String,
      full_name: json['full_name'] as String,
    );
  }
}
