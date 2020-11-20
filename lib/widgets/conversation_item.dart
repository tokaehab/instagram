import 'package:flutter/material.dart';
import 'package:instagram/widgets/mini_avatar.dart';
import '../screens/conversation_screen.dart';

class ConversationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: MiniAvatar(),
        title: Text('account name', style: TextStyle(color: Colors.white)),
        subtitle:
            Text('message content', style: TextStyle(color: Colors.white)),
        trailing: IconButton(
          icon: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ConversationScreen()));
        },
      ),
    );
  }
}
