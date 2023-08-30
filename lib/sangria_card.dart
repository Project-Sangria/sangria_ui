import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SangriaCard extends StatelessWidget {
  final Color borderColor;
  final String avatarUrl;
  final int giftCount;
  final int coinCount;
  final List<String> onlineUserAvatars;
  final String time;
  final String distance;

  SangriaCard({
    required this.borderColor,
    required this.avatarUrl,
    required this.giftCount,
    required this.coinCount,
    required this.onlineUserAvatars,
    required this.time,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: borderColor,
                width: 4.0,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(avatarUrl),
                    radius: 30.0,
                    backgroundColor: borderColor,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(avatarUrl),
                      radius: 28.0,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5.0),
                          Text('$giftCount'),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          SizedBox(width: 5.0),
                          Text('$coinCount'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: onlineUserAvatars.map((url) {
                      return Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(url),
                          radius: 15.0,
                        ),
                      );
                    }).toList(),
                  ),
                  Text('$time • $distance'),
                ],
              ),
            ],
          ),
        ));
  }
}
