import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'featured_plants.dart';
import 'header_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  Body(this._controller);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderSearchBox(_controller, size),
          TitleWithMoreButton(title: "Recomendado", press: () {}),
          RecomendPlants(_controller),
          TitleWithMoreButton(title: "Plantas em Destaque", press: () {}),
          FeaturedPlants(_controller),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
