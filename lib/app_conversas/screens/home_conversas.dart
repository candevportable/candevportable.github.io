import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/category_selector.dart';
import '../widgets/favorite_contacts.dart';
import '../widgets/recent_chats.dart';

class HomeConversas extends StatefulWidget {
  @override
  _HomeConversasState createState() => _HomeConversasState();
}

class _HomeConversasState extends State<HomeConversas>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _titleAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _titleAnimation = Tween(begin: 0.0, end: 28.0).animate(CurvedAnimation(
        parent: _controller, curve: Interval(0.0, 0.25, curve: Curves.easeIn)));

    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: _titleAnimation.value,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(_controller),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(_controller),
                  RecentChats(_controller),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
