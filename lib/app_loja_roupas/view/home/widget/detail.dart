import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import 'add_cart_button.dart';
import 'clothes_info.dart';
import 'detail_app_bar.dart';
import 'size_list.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);

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
