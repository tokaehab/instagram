import 'package:flutter/material.dart';
import '../widgets/add_comment.dart';
import '../widgets/comment.dart';

class CommentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 10,
        title: Text(
          'Comments',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10).add(EdgeInsets.only(bottom: 50)),
        children: [
          Comment(),
          Divider(color: Colors.grey[500].withOpacity(0.2), height: 0.5),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
          Comment(),
        ],
      ),
      floatingActionButton: NewComment(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
