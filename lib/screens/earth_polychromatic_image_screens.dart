import 'package:flutter/material.dart';

import '../data_classes/earth_polychromatic_image.dart';
import '../widgets/earth_polychromatic_image_widget.dart';

class EarthPolychromaticScreen extends StatefulWidget {
  const EarthPolychromaticScreen({super.key});

  @override
  State<EarthPolychromaticScreen> createState() =>
      _EarthPolychromaticScreenState();
}

class _EarthPolychromaticScreenState extends State<EarthPolychromaticScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF061F4A),
        body: Center(child: EarthPolychromaticImageDetailsWidget()),
      ),
    );
  }
}
