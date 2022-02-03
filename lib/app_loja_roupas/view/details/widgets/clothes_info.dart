import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import '../../../constants.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  ClothesInfo(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${clothes.title} ${clothes.subtitle}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              )),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.favorite, color: Colors.red, size: 15),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:5, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.star_border,
                color: kPrimaryColor),
                Text('4.5 (2.7k)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ))
              ],
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text('Mais informações',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kPrimaryColor
                  )),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios,
                  size: 17,
                  color: kPrimaryColor),
                ],
              )
          )
        ],
      )
    );
  }
}
