import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'featured_plants.dart';
import 'header_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderSearchBox(size: size),
          TitleWithMoreButton(title: "Recomendado", press: () {}),
          RecomendPlants(),
          TitleWithMoreButton(title: "Plantas em Destaque", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
