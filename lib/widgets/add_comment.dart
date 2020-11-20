import 'package:flutter/material.dart';
import 'package:instagram/widgets/mini_avatar.dart';

class NewComment extends StatefulWidget {
  @override
  _NewCommentState createState() => _NewCommentState();
}

class _NewCommentState extends State<NewComment> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(
          bottom: 10 + MediaQuery.of(context).viewInsets.bottom / 5),
      child: Row(
        children: [
          MiniAvatar(),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10),
                child: TextField(
                  onTap: () {
                    if (!selected)
                      setState(() {
                        selected = true;
                      });
                  },
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    hintText: 'Add comment as account name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                  onSubmitted: (val) {
                    Focus.of(context).unfocus();
                    setState(() {
                      selected = false;
                    });
                  },
                ),
              ),
              if (selected)
                FlatButton(
                  child: Text('Post'),
                  onPressed: () {},
                )
            ],
          ),
        ],
      ),
    );
  }
}
