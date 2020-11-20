import 'package:flutter/material.dart';
import 'package:instagram/widgets/mini_avatar.dart';
import '../screens/comments_screen.dart';
import '../screens/messages_screen.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            leading: MiniAvatar(),
            title: Text(
              'name of the account',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/p1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CommentsScreen()));
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MessagesScreen()));
                      },
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    size: 30,
                  ),
                  onPressed: () {})
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              '34 Likes',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    'name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 11),
            child: Text(
              'View  all Comments',
              style: TextStyle(color: Color(0xFF5A686B)),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CommentsScreen()));
            },
          )
        ],
      ),
    );
  }
}
