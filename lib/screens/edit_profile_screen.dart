import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            Text(
              'Edit Profile',
              style: TextStyle(color: Colors.white),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: FittedBox(
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 3,
                color: Theme.of(context).primaryColor,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/p1.jpg'),
              ),
            ),
          ),
          FlatButton(
            child: Text('Change Profile Photo',
                style: TextStyle(color: Colors.blue)),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'your name',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Username',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'your name',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Website',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Website',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    'Bio',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bio',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
