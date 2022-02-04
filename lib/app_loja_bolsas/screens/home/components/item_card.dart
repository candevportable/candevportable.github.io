import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  final AnimationController _controller;

  const ItemCard(
    this._controller, {
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Animation _cardOpacityAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.2, 0.4, curve: Curves.easeIn)));
    final Animation _cardScaleAnimation = Tween(begin: 4.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.3, 0.75, curve: Curves.easeOut)));
    final Animation _cardColorAnimation =
        ColorTween(begin: Colors.white, end: product.color).animate(
            CurvedAnimation(
                parent: _controller,
                curve: Interval(0.75, 1.0, curve: Curves.easeIn)));

    return GestureDetector(
      onTap: press,
      child: Opacity(
        opacity: _cardOpacityAnimation.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                decoration: BoxDecoration(
                  color: _cardColorAnimation.value,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    scale: _cardScaleAnimation.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                product.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              "R\$ ${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
