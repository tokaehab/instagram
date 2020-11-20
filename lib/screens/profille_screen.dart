import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile_screen_appbar.dart';
import 'package:instagram/widgets/profile_tabs.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  int index = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            ProfileScreenAppBar(),
            SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white.withOpacity(0.5),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 2,
                    unselectedLabelColor: Colors.white.withOpacity(0.2),
                    tabs: [
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Icon(
                          Icons.grid_on,
                          size: 30,
                        ),
                      ),
                      Icon(
                        Icons.person_pin,
                        size: 30,
                      ),
                    ],
                  ),
                )),
          ];
        },
        body: ProfileTabs(_tabController),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Material(
      color: Colors.black,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
