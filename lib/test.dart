import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:badges/badges.dart' as badges;

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: badges.Badge(
          position: badges.BadgePosition.bottomStart(bottom: 10, start: 14),
      badgeContent: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.red,
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
          radius: 8,
        ),
      ),
      child: CircleAvatar(
            radius: 48,
            backgroundColor: Colors.teal,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              radius: 34,
            ),
          ),
    )
        )  
       );
  }
}
