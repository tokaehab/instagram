import 'package:flutter/material.dart';
import 'package:instagram/models/image_explore_item.dart';

class ImageExploreWidget extends StatelessWidget {
  final ImageExploreItem exploreItem;
  ImageExploreWidget(this.exploreItem);
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
