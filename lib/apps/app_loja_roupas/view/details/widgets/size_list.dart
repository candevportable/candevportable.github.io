import 'package:flutter/material.dart';

import '../../../constants.dart';

class SizeList extends StatefulWidget {
  const SizeList({Key? key}) : super(key: key);

  @override
  _SizeListState createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> _sizeList = ['PP', 'P', 'M', 'G', 'GG'];
  var currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                currentSelected = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: currentSelected == index ?
                    kAccentColor
                    : Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2)
              ),
              child: Text(
                _sizeList[index],
                style: TextStyle(
                  color: currentSelected == index ? kPrimaryColor :
                      Colors.grey,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 10),
          itemCount: _sizeList.length
      ),
    );
  }
}
