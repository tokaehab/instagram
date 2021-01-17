import 'package:flutter/material.dart';
import 'story.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      margin: EdgeInsets.only(left: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Story('Your Story', true),
          Story('name 2'),
          Story('name 3'),
          Story('name 4'),
          Story('name 5'),
          Story('name 6'),
          Story('name 7'),
          Story('name 8'),
          Story('name 9'),
          Story('name 10'),
        ],
      ),
    );
  }
}
