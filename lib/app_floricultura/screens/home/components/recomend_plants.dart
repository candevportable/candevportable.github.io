import 'package:flutter/material.dart';

import '../../../models/plant.dart';
import '../../../screens/details/details_screen.dart';
import 'recomend_plant_card.dart';

class RecomendPlants extends StatelessWidget {
  RecomendPlants(this._controller);

  final AnimationController _controller;
  late Animation recomendAnimation;

  @override
  Widget build(BuildContext context) {
    recomendAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(0.6, 1.0, curve: Curves.easeOut)));

    return Opacity(
      opacity: recomendAnimation.value,
      child: Container(
        height: 340,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: plants.length,
          itemBuilder: (BuildContext context, int index) {
            Plant plant = plants[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      plant: plant,
                    ),
                  ),
                );
              },
              child: RecomendPlantCard(
                plant: plant,
              ),
            );
          },
        ),
      ),
    );
  }
}
