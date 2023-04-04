import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
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
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: kPrimaryColor,
      type: BottomNavigationBarType.fixed,
      onTap: (int value) {
        setState(() {
          onItemTapped(value);
        });
      },
      items: const [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.home_outlined)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.auto_awesome_mosaic_outlined)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.favorite_outline)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.account_box_outlined)),
      ],
    );
  }
}
