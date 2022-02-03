import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/clothes.dart';

class AddButton extends StatelessWidget {
  final Clothes clothes;
  AddButton(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Preço',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              )),
              Text(clothes.price!,
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ))
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 0,
                    primary: kPrimaryColor
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Adicionar ao Carrinho',
                      style: TextStyle(
                        fontSize: 17
                      )),
                      SizedBox(width: 10),
                      Icon(Icons.shopping_cart_outlined)
                    ],
                  )
              ),
            ),
          )
        ],
      )
    );
  }
}
