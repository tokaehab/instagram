import 'package:flutter/material.dart';
import 'package:instagram/widgets/requests_tab.dart';
import 'package:instagram/widgets/mention_activity.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Activity'),
      ),
      body: ListView(children: [
        RequestsTab(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
        MentionAcivity(),
      ]),
    );
  }
}
