import 'package:flutter/material.dart';

import '../../../models/plant.dart';
import '../../../screens/details/details_screen.dart';
import 'recomend_plant_card.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index){
          Plant plant = plants[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(plant: plant,),
                ),
              );
            },
            child: RecomendPlantCard(plant: plant,),
          );
        },
      ),
    );
  }
}
