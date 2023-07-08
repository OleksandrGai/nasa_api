class EarthPolychromaticImage {
  String identifier;
  String caption;
  String image;
  String date;

  EarthPolychromaticImage(
      {required this.caption,
      required this.image,
      required this.identifier,
      required this.date});

  factory EarthPolychromaticImage.fromJson(Map<String, dynamic> json) {
    return EarthPolychromaticImage(
      caption: json['caption'] as String,
      image: json['image'] as String,
      identifier: json['identifier'] as String,
      date: json['date'] as String,
    );
  }
}
