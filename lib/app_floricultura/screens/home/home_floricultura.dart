import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../components/bottom_nav_bar.dart';
import './components/body.dart';

class HomeFloricultura extends StatefulWidget {
  @override
  State<HomeFloricultura> createState() => _HomeFloriculturaState();
}

class _HomeFloriculturaState extends State<HomeFloricultura>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation menuAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    menuAnimation = Tween(begin: 0.0, end: 24.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.0, 0.4, curve: Curves.easeOut)));

    _controller.forward();
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
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(_controller),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/assets_app_floricultura/icons/menu.svg",
          width: menuAnimation.value,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
