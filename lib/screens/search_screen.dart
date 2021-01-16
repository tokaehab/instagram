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

import 'post_screen.dart';

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
        'https://cf1.s3.souqcdn.com/item/2019/05/01/53/46/10/23/item_L_53461023_64d6fa8a94782.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.pandotrip.com/wp-content/uploads/2016/07/li-Photo-by-Santo-980x572.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.adobe.com/content/dam/cc/us/en/creative-cloud/photography/discover/landscape-photography/CODERED_B1_landscape_hero-img_900x420.jpg.img.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://images.squarespace-cdn.com/content/v1/561a16a8e4b076f70550437b/1495701737051-2KQ1S4TMFYZJVGEZF43W/ke17ZwdGBToddI8pDm48kL4WrIntsHuCODFzGytxs8sUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcw31z2cKmL83lZVTgYf1Shcnt0pzT4b-h8WwoQ3rX-86z0Q_QpJgDA4jmv5AtYw-J/3.jpg',
      ),
    );
    exploreItems.add(
      MultipleImageExploreItem(
        'muhammed',
        'https://www.lukas-petereit.com/wp-content/uploads/2018/08/Sunset-at-Verdon-Canyon-Landscape-of-Provence-Photography-in-France.jpg',
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
        'https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg',
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
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostScreen()));
                      },
                      child: ReelsExploreWidget(exploreItems[i]));

                case VideoExploreItem:
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostScreen()));
                      },
                      child: VideoExploreWidget(exploreItems[i]));

                case MultipleImageExploreItem:
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostScreen()));
                      },
                      child: multipleImageExploreWidget(exploreItems[i]));

                default:
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostScreen()));
                      },
                      child: ImageExploreWidget(exploreItems[i]));
              }
            },
          ),
        ],
      ),
    );
  }
}
