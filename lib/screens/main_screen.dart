import 'package:flutter/material.dart';
import '../widgets/posts_list.dart';
import '../widgets/stories_list.dart';
import 'messages_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {},
        ),
        title: Text('Instagram',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.headline6.fontFamily,
                fontSize: 30)),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagesScreen()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          StoriesList(),
          Divider(color: Colors.grey[500].withOpacity(0.2), height: 0.5),
          PostsList(),
        ],
      ),
    );
  }
}
