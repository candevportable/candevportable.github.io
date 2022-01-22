import 'package:flutter/material.dart';

import '../../screens/details/components/body.dart';
import '../../models/plant.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(plant: plant,),
    );
  }
}