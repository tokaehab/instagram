import 'package:flutter/material.dart';

import 'grid_post.dart';

class ProfileTabs extends StatelessWidget {
  final TabController _tabController;
  ProfileTabs(this._tabController);
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.4),
          children: [
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
          ],
        ),
        GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.4),
          children: [
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
            GridPost(),
          ],
        )
      ],
    );
  }
}
