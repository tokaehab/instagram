import 'package:flutter/material.dart';
import 'package:instagram/models/multiple_image_explore_item.dart';

class MultipleImageExploreWidget extends StatelessWidget {
  final MultipleImageExploreItem exploreItem;
  MultipleImageExploreWidget(this.exploreItem);
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
          right: 5,
          top: 5,
          child: Icon(
            Icons.collections,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
