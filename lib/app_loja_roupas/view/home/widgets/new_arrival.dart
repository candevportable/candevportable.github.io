import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import 'categories_list.dart';
import 'clothes_item.dart';

class NewArrival extends StatelessWidget {
  NewArrival(this._controller);

  final AnimationController _controller;
  final clothesList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    final Animation _categoryAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.45, 0.65, curve: Curves.easeIn)));

    return Container(
      child: Column(
        children: [
          Opacity(
              opacity: _categoryAnimation.value,
              child: CategoriesList('Novidades')),
          Container(
            height: 200,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    ClothesItem(clothesList[index], _controller),
                separatorBuilder: (_, index) => SizedBox(width: 10),
                itemCount: clothesList.length),
          )
        ],
      ),
    );
  }
}
