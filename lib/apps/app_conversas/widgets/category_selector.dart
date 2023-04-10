import 'package:flutter/material.dart';

import '../constants.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector(this._controller);

  final AnimationController _controller;

  @override
  _CategorySelectorState createState() => _CategorySelectorState(_controller);
}

class _CategorySelectorState extends State<CategorySelector> {
  _CategorySelectorState(this._controller);
  final AnimationController _controller;
  late Animation _categoryAnimation;

  int selectedIndex = 0;
  final List<String> categories = ['Mensagens', 'Online', 'Grupos', 'Solicitações'];

   @override
  void initState() {
    super.initState();

    _categoryAnimation = Tween(begin: 0.0, end: 90.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.25, 0.5, curve: Curves.easeIn)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _categoryAnimation.value,
      color: kPrimaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.white60,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}