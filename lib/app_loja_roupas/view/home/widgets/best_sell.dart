import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'categories_list.dart';

class BestSell extends StatelessWidget {
  BestSell(this._controller);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final Animation _categoryAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.45, 0.65, curve: Curves.easeIn)));
    final Animation _cardAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.8, 1.0, curve: Curves.easeIn)));

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
              opacity: _categoryAnimation.value,
              child: CategoriesList('Mais Vendidos')),
          Opacity(
            opacity: _cardAnimation.value,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 25),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              'assets/assets_app_loja_roupas/images/best1.png',
                              width: 80),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Oversize Miniso Feminino',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('Camiseta',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('R\$ 79.99',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: kPrimaryColor))
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle),
                          child: Icon(Icons.favorite)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
