import 'package:flutter/material.dart';

import '../../constants.dart';
import './widget/best_sell.dart';
import './widget/custom_app_bar.dart';
import './widget/new_arrival.dart';
import './widget/search_input.dart';

class HomeLojaRoupas extends StatelessWidget {
  final bottomList = ['home', 'menu', 'heart', 'user'];

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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomList.map((e) => BottomNavigationBarItem(
          label: e,
          icon: Image.asset('assets/assets_app_loja_roupas/icons/$e.png', width: 25)
        )).toList(),
      ),
    );
  }
}
