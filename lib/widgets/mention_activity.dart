import 'package:flutter/material.dart';

import 'mini_avatar.dart';

class MentionAcivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListTile(
        leading: MiniAvatar(),
        title: Text(
          'Someone mentioned you in a post',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          child: Image.asset('assets/images/p1.jpg'),
        ),
      ),
    );
  }
}
