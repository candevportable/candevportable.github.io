import 'package:flutter/material.dart';

import '../../constants.dart';
import './widgets/best_sell.dart';
import './widgets/custom_app_bar.dart';
import './widgets/new_arrival.dart';
import './widgets/search_input.dart';
import './widgets/bottom_nav_bar.dart';

class HomeLojaRoupas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomAppBar(), SearchInput(), NewArrival(), BestSell()],
          ),
        )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
