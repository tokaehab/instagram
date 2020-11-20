import 'package:flutter/material.dart';
import 'post.dart';

class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(),
        Post(),
        Post(),
        Post(),
        Post(),
      ],
    );
  }
}
