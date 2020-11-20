import 'package:flutter/material.dart';
import 'package:instagram/widgets/mini_avatar.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MiniAvatar(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_outline,
              size: 18,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
