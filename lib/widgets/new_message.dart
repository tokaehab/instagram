import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {},
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
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
                  hintText: 'Add new message',
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
                child: Text('Send'),
                onPressed: () {},
              ),
            if (!selected)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                  IconButton(icon: Icon(Icons.image), onPressed: () {}),
                  IconButton(icon: Icon(Icons.gif, size: 30), onPressed: () {}),
                ],
              )
          ],
        ),
      ),
    );
  }
}
