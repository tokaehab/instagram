import 'package:flutter/material.dart';
import '../widgets/follow_request.dart';

class RequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Friend Requests',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
          FollowRequest(),
        ],
      ),
    );
  }
}
