import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/models/explore_item.dart';
import 'package:instagram/models/image_explore_item.dart';
import 'package:instagram/models/multiple_image_explore_item.dart';
import 'package:instagram/models/reels_explore_item.dart';
import 'package:instagram/models/video_explore_item.dart';
import 'package:instagram/widgets/search_widgets/image_explore_widget.dart';
import 'package:instagram/widgets/search_widgets/multiple_image_explore_widget.dart';
import 'package:instagram/widgets/search_widgets/reels_explore_widget.dart';
import 'package:instagram/widgets/search_widgets/video_explore_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<ExploreItem> exploreItems = [];
  @override
  void initState() {
    super.initState();
    exploreItems.add(
      ReelsExploreItem(
        'muhammed',
        'https://www.gettyimages.com/gi-resources/images/500px/983794168.jpg',
      ),
    );
    exploreItems.add(
      ImageExploreItem(
        'Toka',
        'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2018/02/propose-1517999844.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://content.fortune.com/wp-content/uploads/2018/07/gettyimages-961697338.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://i.pinimg.com/736x/ab/09/98/ab099805acf57a7a7bc07ddfd6c7059d.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://image.freepik.com/free-photo/lovely-romantic-couple-bed_23-2147862644.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://thumbs.dreamstime.com/b/young-lovely-couple-bed-having-fun-covered-soft-warm-white-blanket-happy-playful-caucasian-lovers-relaxing-comfortable-139381104.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://image.freepik.com/free-photo/front-view-lovely-couple-kissing_23-2148297679.jpg',
      ),
    );
    exploreItems.add(
      VideoExploreItem(
        'muhammed',
        'https://i.pinimg.com/originals/60/46/6d/60466d528f0ae6f8e49a779bf8c76985.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.channelnewsasia.com/image/12219508/16x9/1440/810/f8becffde4960b34b648ee11763b0c2c/jf/anastasia-sklyar-xr2tms56j7a-unsplash-mod.jpg',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Color.fromRGBO(18, 18, 18, 1),
            title: Container(
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.grey),
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        isDense: true,
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverStaggeredGrid.countBuilder(
            crossAxisCount: 3,
            itemCount: exploreItems.length,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            staggeredTileBuilder: (i) {
              int c, r;
              c = (exploreItems[i] is VideoExploreItem) ? 2 : 1;
              r = (exploreItems[i] is VideoExploreItem ||
                      exploreItems[i] is ReelsExploreItem)
                  ? 2
                  : 1;
              return i != 0
                  ? StaggeredTile.count(c, r)
                  : StaggeredTile.count(3, 3);
            },
            itemBuilder: (context, i) {
              switch (exploreItems[i].runtimeType) {
                case ReelsExploreItem:
                  {
                    //reels
                    return ReelsExploreWidget(exploreItems[i]);
                  }
                  break;
                case VideoExploreItem:
                  {
                    //video
                    return VideoExploreWidget(exploreItems[i]);
                  }
                  break;
                case MultipleImageExploreItem:
                  {
                    //multiple images
                    return multipleImageExploreWidget(exploreItems[i]);
                  }
                  break;
                default:
                  {
                    //image
                    return ImageExploreWidget(exploreItems[i]);
                  }
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}
