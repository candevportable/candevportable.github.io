import 'package:flutter/material.dart';

import '../../constants.dart';
import './widgets/best_sell.dart';
import './widgets/custom_app_bar.dart';
import './widgets/new_arrival.dart';
import './widgets/search_input.dart';
import './widgets/bottom_nav_bar.dart';

class HomeLojaRoupas extends StatefulWidget {
  @override
  State<HomeLojaRoupas> createState() => _HomeLojaRoupasState();
}

class _HomeLojaRoupasState extends State<HomeLojaRoupas>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomAppBar(_controller), SearchInput(_controller), NewArrival(_controller), BestSell(_controller)],
        ),
      )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
