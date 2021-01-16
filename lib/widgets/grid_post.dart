import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/screens/post_screen.dart';

class GridPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PostScreen()));
      },
      child: Container(
        margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/p1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
