import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchInput extends StatelessWidget {
  final tagList = ['Feminino', "Camiseta", "Vestido"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child:
                            Image.asset('assets/assets_app_loja_roupas/icons/search.png', width: 20),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset('assets/assets_app_loja_roupas/icons/filter.png', width: 25),
              )
            ],
          ),
          Row(
            children: tagList
                .map((e) => Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kAccentColor),
                      child: Text(e, style: TextStyle(color: Colors.grey)),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
