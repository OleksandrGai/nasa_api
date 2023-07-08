import 'package:flutter/material.dart';

import '../api_data/astronomy_picture_of_the_day_api_data.dart';
import '../data_classes/astronomy_picture_of_the_day.dart';
import '../widgets/list_of_features.dart';

class FeaturesScreen extends StatefulWidget {
  const FeaturesScreen({super.key});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF061F4A),
        body: FeaturesListView(),
      ),
    );
  }
}
