import '../configs/app_constants.dart';
import 'package:flutter/material.dart';
import '../models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  HotelCarousel(this._controller);

  final AnimationController _controller;
  late Animation _hotelCardAnimation;

  @override
  Widget build(BuildContext context) {
    _hotelCardAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    parent: _controller, curve: Interval(0.4, 0.75, curve: Curves.easeOut)));

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Hotéis Exclusivos',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Ver Todos',
                  style: TextStyle(
                    color: Color(PRIMARY_COLOR),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: _hotelCardAnimation.value,
          child: Container(
            height: 300.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hotels[index];
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 240.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          height: 200.0,
                          width: 240.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    hotel.name!,
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  hotel.address!,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  'R\$${hotel.price}/dia',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            height: 180.0,
                            width: 220.0,
                            image: AssetImage(hotel.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}