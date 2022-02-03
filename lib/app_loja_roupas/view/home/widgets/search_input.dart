import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchInput extends StatefulWidget {
  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final tagList = ['Feminino', 'Camiseta', 'Casaco', 'Masculino', 'Vestido'];

  List<String> filters = <String>['Casaco'];

  Widget _buildChip(String label) {
    return FilterChip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: kAccentColor,
      elevation: 4.0,
      shadowColor: Colors.grey[60],
      selectedShadowColor: Colors.white,
      padding: EdgeInsets.all(8.0),
      selected: filters.contains(label),
      selectedColor: kPrimaryColor,
      showCheckmark: false,
      onSelected: (bool selected) {
        setState(() {
          if (selected) {
            filters.add(label);
          } else {
            filters.removeWhere((element) => element == label);
          }
        });
      },
    );
  }

  chipList() {
    return Wrap(
        spacing: 10.0,
        runSpacing: 6.0,
        children: tagList.map((e) => _buildChip(e)).toList());
  }

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
                        child: Image.asset(
                            'assets/assets_app_loja_roupas/icons/search.png',
                            width: 20),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                    'assets/assets_app_loja_roupas/icons/filter.png',
                    width: 25),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          chipList()
        ],
      ),
    );
  }
}
