import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import 'categories_list.dart';
import 'clothes_item.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList('Novidades'),
          Container(
            height: 200,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ClothesItem(clothesList[index]),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: clothesList.length),
          )
        ], 
      ),
    );
  }
}
