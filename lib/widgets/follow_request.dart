import 'package:flutter/material.dart';

import 'mini_avatar.dart';

class FollowRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListTile(
        leading: MiniAvatar(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                'ZoozyMediaQuery.of(context).size.height * 0.1',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(1),
                    color: Colors.blue,
                    child: FittedBox(
                      child: Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  color: Colors.white,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(1),
                    color: Theme.of(context).primaryColor,
                    child: FittedBox(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // RaisedButton(
            //   onPressed: null,
            //   child: Text('Decline'),
            // ),
          ],
        ),
      ),
    );
  }
}
