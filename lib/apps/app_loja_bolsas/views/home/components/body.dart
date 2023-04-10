import 'package:flutter/material.dart';

import '../../details/details_screen.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  Body(this._controller);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final Animation _titleAnimation = Tween(begin: 0.0, end: 24.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.0, 0.2, curve: Curves.easeIn)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Mulheres",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold, fontSize: _titleAnimation.value),
          ),
        ),
        Categories(_controller),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      _controller,
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
        SizedBox(
          height: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
