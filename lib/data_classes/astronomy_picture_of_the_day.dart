class AstronomyPictureOfTheDay {
  AstronomyPictureOfTheDay({
    required this.title,
    required this.url,
    required this.copyright,
    required this.date,
    required this.explanation,
  });

  final String? copyright;
  final String date;
  final String explanation;
  final String title;
  final String url;

  factory AstronomyPictureOfTheDay.fromJson(Map<String, dynamic> json) {
    return AstronomyPictureOfTheDay(
      title: json['title'] as String,
      url: json['url'] as String,
      copyright: json['copyright'],
      date: json['date'] as String,
      explanation: json['explanation'] as String,
    );
  }
}
