import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  FavoriteContacts(this._controller);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final Animation _favoriteAnimation = Tween(begin: 0.0, end: 120.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.5, 0.75, curve: Curves.easeIn)));
    final Animation _avatarAnimation = Tween(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: Interval(0.55, 0.75, curve: Curves.easeIn)));

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favoritos',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: _favoriteAnimation.value,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favorites[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: _avatarAnimation.value * 35,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl!),
                        ),
                        SizedBox(height: _avatarAnimation.value * 6.0),
                        Text(
                          favorites[index].name!,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: _avatarAnimation.value * 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
