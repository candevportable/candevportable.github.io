import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import './components/body.dart';

class HomeLojaBolsas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/assets_app_loja_bolsas/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/assets_app_loja_bolsas/icons/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/assets_app_loja_bolsas/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
