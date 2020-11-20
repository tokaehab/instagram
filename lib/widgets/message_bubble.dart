import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final Key key;

  MessageBubble(this.isMe, {this.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[850] : Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          padding: EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              color: isMe ? Colors.grey[850] : Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
                bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Text(
              'message',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: isMe ? TextAlign.end : TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
