import 'package:flutter/material.dart';
import 'package:instagram/models/video_explore_item.dart';

class VideoExploreWidget extends StatelessWidget {
  final VideoExploreItem exploreItem;
  VideoExploreWidget(this.exploreItem);
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
