import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../configs/app_constants.dart';
import '../widgets/destination_carousel.dart';
import '../widgets/hotel_carousel.dart';

class HomeViagens extends StatefulWidget {
  @override
  _HomeViagensState createState() => _HomeViagensState();
}

class _HomeViagensState extends State<HomeViagens>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _titleAnimation;
  late Animation _menuAnimation;
  late Animation _borderIconAnimation;
  late Animation _iconAnimation;

  bool _airplane = true;

  int _selectedIndex = 0;
  int _currentTab = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: _borderIconAnimation.value,
        width: _borderIconAnimation.value,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Color(SECONDARY_COLOR)
              : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: _iconAnimation.value,
          color: _selectedIndex == index
              ? Color(PRIMARY_COLOR)
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _titleAnimation = Tween(begin: 0.0, end: 30.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.0, 0.3, curve: Curves.easeOut)));
    _menuAnimation = Tween(begin: 0.0, end: 24.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.0, 0.3, curve: Curves.easeOut)));
    _borderIconAnimation = Tween(begin: 0.0, end: 60.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.3, 0.6, curve: Curves.easeOut)));
    _iconAnimation = Tween(begin: 0.0, end: 25.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.3, 0.6, curve: Curves.easeOut)));

    Future.delayed(Duration(milliseconds: 3700), () {
      setState(() {
        _airplane = !_airplane;
      });
    }).then((value) => _controller.forward());

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _airplane
        ? Container(
            color: Colors.white,
            child: Lottie.asset(
                "assets/assets_app_viagens/animated_airplane.json"))
        : Scaffold(
            backgroundColor: Color(SCAFFOLD_BACKGROUND_COLOR),
            body: SafeArea(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Aonde você\ngostaria de ir?',
                          style: TextStyle(
                            fontSize: _titleAnimation.value,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                              "assets/assets_app_viagens/menu.svg",
                              width: _menuAnimation.value,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _icons
                        .asMap()
                        .entries
                        .map(
                          (MapEntry map) => _buildIcon(map.key),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 20.0),
                  DestinationCarousel(_controller),
                  SizedBox(height: 20.0),
                  HotelCarousel(_controller),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentTab,
              onTap: (int value) {
                setState(() {
                  _currentTab = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.local_pizza,
                    size: 30.0,
                  ),
                    label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    size: 30.0,
                  ),
                  label: "",
                )
              ],
            ),
          );
  }
}
