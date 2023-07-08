import 'package:flutter/material.dart';

import '../widgets/mars_rover_photos_widget.dart';

class MarsRoverPhotosScreen extends StatefulWidget {
  const MarsRoverPhotosScreen({super.key});

  @override
  State<MarsRoverPhotosScreen> createState() => _MarsRoverPhotosScreenState();
}

class _MarsRoverPhotosScreenState extends State<MarsRoverPhotosScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF061F4A),
        body: Center(child: (MarsRoverPhotosDetailsWidget())),
      ),
    );
  }
}
