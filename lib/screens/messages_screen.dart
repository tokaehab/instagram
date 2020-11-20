import 'package:flutter/material.dart';
import '../widgets/conversation_item.dart';
import '../widgets/search_bar.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('account name'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.video_call,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.edit,
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          SearchBar(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
          ConversationItem(),
        ],
      ),
    );
  }
}
