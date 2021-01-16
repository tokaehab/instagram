import 'package:flutter/material.dart';
import 'package:instagram/widgets/post.dart';

class PostScreen extends StatelessWidget {
  final ScrollController controller =
      ScrollController(initialScrollOffset: postSize * 4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Name'),
      ),
      body: ListView(
        controller: controller,
        children: [
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}
