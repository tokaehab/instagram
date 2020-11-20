import 'package:flutter/material.dart';
import 'package:instagram/screens/edit_profile_screen.dart';
import 'highlighted_stories_list.dart';
import 'profile_menu.dart';
import 'story.dart';

class ProfileScreenAppBar extends StatefulWidget {
  @override
  _ProfileScreenAppBarState createState() => _ProfileScreenAppBarState();
}

class _ProfileScreenAppBarState extends State<ProfileScreenAppBar> {
  double expandedHeight;
  bool firstRun;
  @override
  void initState() {
    super.initState();
    firstRun = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (firstRun) {
      setState(() {
        firstRun = false;
        expandedHeight = MediaQuery.of(context).size.height * 0.58;
      });
    }
  }

  void showHighlight() {
    setState(() {
      if (expandedHeight == MediaQuery.of(context).size.height * 0.58) {
        expandedHeight = MediaQuery.of(context).size.height * 0.48;
      } else
        expandedHeight = MediaQuery.of(context).size.height * 0.58;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: true,
      title: Text('Account name'),
      actions: [
        IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  )),
                  builder: (context) {
                    return ProfileMenu();
                  });
            }),
      ],
      expandedHeight: expandedHeight,
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Story('name', true),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text('5', style: TextStyle(color: Colors.white)),
                          Text('Posts', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text('250', style: TextStyle(color: Colors.white)),
                          Text('Followers',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        children: [
                          Text('260', style: TextStyle(color: Colors.white)),
                          Text('Following',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(0.18),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.04,
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditProfileScreen()));
                  },
                ),
                HighlightedStoriesList(showHighlight),
                Container(
                  child: Divider(
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
