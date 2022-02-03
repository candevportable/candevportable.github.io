import 'package:flutter/material.dart';

import '../../constants.dart';
import './widgets/best_sell.dart';
import './widgets/custom_app_bar.dart';
import './widgets/new_arrival.dart';
import './widgets/search_input.dart';

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
