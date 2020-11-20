import 'package:flutter/cupertino.dart';

class GridPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
