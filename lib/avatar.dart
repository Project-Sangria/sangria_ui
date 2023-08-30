import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.teal,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              radius: 28,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 11,
            child: CircleAvatar(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF47b881),
            ),
          ),
        ],
      ),

    ));
  }
}
