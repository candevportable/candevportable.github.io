import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  FeaturedPlants(this._controller);

  final AnimationController _controller;
  late Animation featuredAnimation;

  @override
  Widget build(BuildContext context) {
    featuredAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.75, 1.0, curve: Curves.easeOut)));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Opacity(
        opacity: featuredAnimation.value,
        child: Row(
          children: <Widget>[
            FeaturePlantCard(
              image: "assets/assets_app_floricultura/images/bottom_img_1.png",
              press: () {},
            ),
            FeaturePlantCard(
              image: "assets/assets_app_floricultura/images/bottom_img_2.png",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
