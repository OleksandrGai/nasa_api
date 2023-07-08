import 'package:flutter/material.dart';

import '../widgets/astronomy_picture_of_the_day_widget.dart';

class AstroPictScreen extends StatefulWidget {
  const AstroPictScreen({super.key});

  @override
  State<AstroPictScreen> createState() => _AstroPictScreenState();
}

class _AstroPictScreenState extends State<AstroPictScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF061F4A),
        body: Center(child: AstroPictureDetailsWidget()),
      ),
    );
  }
}
