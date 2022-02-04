import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  Categories(this._controller);

  final AnimationController _controller;

  @override
  _CategoriesState createState() => _CategoriesState(this._controller);
}

class _CategoriesState extends State<Categories> {
  _CategoriesState(this._controller);

  final AnimationController _controller;

  List<String> categories = ["Bolsas de mão", "Jóias", "Calçados", "Vestidos"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Animation _categoryAnimation = Tween(begin: 0.0, end: 0.9).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.2, 0.4, curve: Curves.easeIn)));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 30.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, _categoryAnimation),
        ),
      ),
    );
  }

  Widget buildCategory(int index, Animation animation) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontSize: animation.value * 14.0,
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: animation.value * (kDefaultPaddin / 4 - 2)),
              height: animation.value * 2.0,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
