import 'package:flutter/material.dart';

class MiniAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color(0xFF4E246B),
              Color(0xFF8134AF),
              Color(0xFF833AB4),
              Color(0xFFC23585),
              Color(0xFFC9285C),
              Color(0xFFDA4A64),
              Color(0xFFFF5B3F),
              Color(0xFFF46040),
              Color(0xFFFE9F4D),
              Color(0xFFFFCB51),
              Color(0xFFFFCB40),
              Color(0xFFFFED40),
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: Theme.of(context).primaryColor,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/p2.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
