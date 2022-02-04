import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(this._controller);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final Animation _titleAnimation = Tween(begin: 0.0, end: 26.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.0, 0.2, curve: Curves.easeIn)));
    final Animation _cartAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.2, 0.4, curve: Curves.easeIn)));

    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              RichText(
                  text: TextSpan(
                      text: "O que você procura?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: _titleAnimation.value,
                          fontWeight: FontWeight.bold)))
            ],
          ),
          Opacity(
            opacity: _cartAnimation.value,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0.1,
                              blurRadius: 0.1,
                              offset: Offset(0, 1))
                        ]),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
