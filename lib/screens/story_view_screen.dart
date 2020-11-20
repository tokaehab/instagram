import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          child: StoryView(
            controller: controller,
            storyItems: [
              StoryItem.text(
                title:
                    "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
                backgroundColor: Colors.orange,
                roundedTop: true,
              ),
              StoryItem.inlineImage(
                url: "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg",
                controller: controller,
                caption: Text(
                  "Banku & Tilapia. The food to keep you charged whole day.\n#1 Local food.",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                    fontSize: 17,
                  ),
                ),
              ),
              StoryItem.inlineImage(
                url:
                    "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
                controller: controller,
                caption: Text(
                  "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                    fontSize: 17,
                  ),
                ),
              ),
              StoryItem.inlineImage(
                url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                controller: controller,
                caption: Text(
                  "Hektas, sektas and skatad",
                  style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                    fontSize: 17,
                  ),
                ),
              )
            ],
            onStoryShow: (s) {},
            onComplete: () {
              Navigator.pop(context);
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            inline: true,
          ),
        ),
      ]),
    );
  }
}
