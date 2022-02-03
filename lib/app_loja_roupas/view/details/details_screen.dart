import 'package:flutter/material.dart';

import '../../model/clothes.dart';
import 'widgets/add_cart_button.dart';
import 'widgets/clothes_info.dart';
import 'widgets/detail_app_bar.dart';
import 'widgets/size_list.dart';

class DetailsScreen extends StatelessWidget {
  final Clothes clothes;
  DetailsScreen(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes),
            ClothesInfo(clothes),
            SizeList(),
            AddButton(clothes)
          ],
        ),
      ),
    );
  }
}
