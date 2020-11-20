import 'package:flutter/material.dart';
import 'package:instagram/models/reels_explore_item.dart';

class ReelsExploreWidget extends StatelessWidget {
  final ReelsExploreItem exploreItem;
  ReelsExploreWidget(this.exploreItem);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                exploreItem.itemUrl,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 5,
          child: Icon(
            Icons.movie,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
