import 'package:flutter/material.dart';
import '../widgets/message_bubble.dart';
import '../widgets/new_message.dart';

class ConversationScreen extends StatefulWidget {
  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            CircleAvatar(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: <Color>[
                      Color(0xFF4E246B),
                      Color(0xFF8134AF),
                      Color(0xFF833AB4),
                      Color(0xFFC23585),
                      Color(0xFFC9285C),
                      Color(0xFFDA4A64),
                      Color(0xFFFF5B3F),
                      Color(0xFFF46040),
                      Color(0xFFFE9F4D),
                      Color(0xFFFFCB51),
                      Color(0xFFFFCB40),
                      Color(0xFFFFED40),
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/p2.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('account name'),
            Text(
              'active 1 hr ago',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.video_call,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.info_outline,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView(
                reverse: true,
                children: [
                  MessageBubble(true),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(true),
                  MessageBubble(false),
                  MessageBubble(false),
                  MessageBubble(true),
                  MessageBubble(false),
                ],
              ),
            ),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}
