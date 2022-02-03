import 'package:flutter/material.dart';

import '../../../model/clothes.dart';
import '../../../constants.dart';
import '../../details/details_screen.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;
  ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(clothes))
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 110,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl!),
                        fit: BoxFit.fitHeight,
                      )
                    ),
                  ),
                  Positioned(
                      right: 20,
                      top: 15,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.favorite, color: Colors.red, size: 15),
                      )
                  ),
                ],
              ),
              Text(clothes.title!, style: TextStyle(
                fontWeight: FontWeight.bold, height: 1.5, color: Colors.black
              )),
              Text(clothes.subtitle!, style: TextStyle(
                  fontWeight: FontWeight.bold, height: 1.5, color: Colors.black87
              )),
              Text(clothes.price!, style: TextStyle(
                  fontWeight: FontWeight.bold, height: 1.5, color: kPrimaryColor
              ))
            ],
          ),
        ),
      ),
    );
  }
}
