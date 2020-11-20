import 'package:flutter/material.dart';

class HighlightStory extends StatelessWidget {
  final bool storyAdd;
  HighlightStory([this.storyAdd = false]);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(0.3),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
          image: (!storyAdd)
              ? DecorationImage(
                  image: AssetImage(
                    'assets/images/p2.jpg',
                  ),
                  fit: BoxFit.scaleDown,
                )
              : null,
        ),
        alignment: Alignment.center,
        child: storyAdd
            ? IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.add,
                  size: 35,
                ),
                onPressed: () {})
            : null,
      ),
    );
  }
}
