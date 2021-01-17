import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram/screens/story_view_screen.dart';

class Story extends StatelessWidget {
  final String name;
  final bool mine;

  Story(this.name, [this.mine = false]);

  SimpleDialog storyTypeDialog(BuildContext context) {
    return SimpleDialog(
      title: Text(
        'Story Type',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      children: [
        SimpleDialogOption(
          child: Text('Image'),
          onPressed: () {
            Navigator.of(context).pop(1);
          },
        ),
        SimpleDialogOption(
          child: Text('Video'),
          onPressed: () {
            Navigator.of(context).pop(2);
          },
        ),
        SimpleDialogOption(
          child: Text('Text'),
          onPressed: () {
            Navigator.of(context).pop(3);
          },
        ),
      ],
    );
  }

  void addStoryIOS(BuildContext context) async {
    int choice = await showCupertinoDialog(
      context: context,
      builder: (context) => storyTypeDialog(context),
    );
    showScreenUponChoice(choice);
  }

  void addStoryAndroid(BuildContext context) async {
    int choice = await showDialog(
      context: context,
      child: storyTypeDialog(context),
    );
    showScreenUponChoice(choice);
  }

  void showScreenUponChoice(int choice) async {
    if (choice == 1) {
      ImagePicker picker = ImagePicker();
      PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    } else if (choice == 2) {
      ImagePicker picker = ImagePicker();
      PickedFile pickedFile = await picker.getVideo(source: ImageSource.camera);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (mine) {
                if (Theme.of(context).platform == TargetPlatform.android) {
                  addStoryAndroid(context);
                } else {
                  addStoryIOS(context);
                }
              } else {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StoryViewScreen()));
              }
            },
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.14,
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
                ),
                if (mine)
                  Positioned(
                    right: 1,
                    bottom: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          FittedBox(
              child: Text(
            name,
            style: TextStyle(color: Colors.white),
          ))
        ],
      ),
    );
  }
}
