import 'package:flutter/material.dart';

import 'highlight_story.dart';

class HighlightedStoriesList extends StatefulWidget {
  final Function showHighlight;
  HighlightedStoriesList(this.showHighlight);
  @override
  _HighlightedStoriesListState createState() => _HighlightedStoriesListState();
}

class _HighlightedStoriesListState extends State<HighlightedStoriesList> {
  bool _shown = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Story Highlights',
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              IconButton(
                icon: Icon(
                  _shown ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.white.withOpacity(0.5),
                ),
                onPressed: () {
                  setState(() {
                    _shown = !_shown;
                    widget.showHighlight();
                  });
                },
              )
            ],
          ),
        ),
        if (_shown)
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                HighlightStory(true),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
                HighlightStory(),
              ],
            ),
          ),
      ],
    );
  }
}
