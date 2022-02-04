import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import '../../../constants.dart';
import '../../details/details_screen.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  final AnimationController _controller;
  ClothesItem(this.clothes, this._controller);

  @override
  Widget build(BuildContext context) {
    final Animation _cardAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.6, 0.85, curve: Curves.easeIn)));

    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(clothes))
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: _cardAnimation.value * 110.0,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl!),
                        fit: BoxFit.fitHeight,
                      )
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.favorite, color: Colors.red, size: _cardAnimation.value * 15),
                      )
                  ),
                ],
              ),
              Text(clothes.title!, style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: _cardAnimation.value * 16, color: Colors.black
              )),
              Text(clothes.subtitle!, style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _cardAnimation.value * 14, color: Colors.black87
              )),
              Text(clothes.price!, style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _cardAnimation.value * 14, color: kPrimaryColor
              ))
            ],
          ),
        ),
      ),
    );
  }
}
