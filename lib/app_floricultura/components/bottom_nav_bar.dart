import 'package:flutter/material.dart';

import '../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentTab = 0;

  void onItemTapped(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          onItemTapped(value);
        });
      },
      selectedItemColor: kPrimaryColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_outlined),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border),
          activeIcon: Icon(Icons.star,),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}
