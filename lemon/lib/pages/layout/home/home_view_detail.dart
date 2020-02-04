import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lemon/router/page_builder.dart';
import 'package:lemon/router/page_routes.dart';

class HomeViewDetialPage extends StatefulWidget {
  final Bundle bundle;
  HomeViewDetialPage(this.bundle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeViewDetialPageState();
  }
}

class _HomeViewDetialPageState extends State<HomeViewDetialPage> {
  final double expanded_height = 400;
  final double rounded_container_height = 50;

  void initState() {
    print(widget.bundle.getMap("data")["name"]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              _buildSliverHead(),
              SliverToBoxAdapter(
                child: _buildDetail(),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(
        expanded_height,
        rounded_container_height,
        widget.bundle,
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/1.jpg",
              fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "高智勇_Joker",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    // letterSpacing: 1.3,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  height: 4,
                ),
                Text(
                  "在未来面前我们都是孩子",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(Icons.share, color: Colors.black54),
        ],
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _buildUserInfo(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                letterSpacing: 1.2,
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 20, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Recommend",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.6,
                  ),
                ),
                Text(
                  "View More",
                  style: TextStyle(fontSize: 16, color: Colors.teal[200]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120,
            child: RecommendWidget(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百年歌自苦,未见有知音"
              "读书城南,百",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                letterSpacing: 1.2,
                height: 1.5,
              ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class Vacation {
  String url;
  String name;
  String describe;

  Vacation(this.url, this.name, this.describe);
}

class RecommendWidget extends StatelessWidget {
  var vacationList = [
    Vacation("assets/images/2.jpg", "Franch", "布拉布拉,小月亮"),
    Vacation("assets/images/1.jpg", "ICEICE", "布拉布拉,小雪山"),
    Vacation("assets/images/3.jpg", "Paris", "布拉布拉,小夕阳"),
    Vacation("assets/images/4.jpg", "London", "布拉布拉,小河流"),
    Vacation("assets/images/5.jpg", "China", "布拉布拉,小沙漠"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: vacationList.length,
      itemBuilder: (context, index) {
        var vacation = {
          "url":vacationList[index].url,
          "name":vacationList[index].name,
          };
        return GestureDetector(
          child: Container(
            child: Image.asset(
              vacationList[index].url,
              fit: BoxFit.cover,
            ),
            height: 100,
            width: 120,
            margin: EdgeInsets.only(
              right: 15,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(
                context, PageName.home_image_view_page.toString(),
                arguments: Bundle()..putMap("data", vacation));
          },
        );
      },
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;
  final Bundle bundle;

  DetailSliverDelegate(
      this.expandedHeight, this.roundedContainerHeight, this.bundle);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Stack(
        children: <Widget>[
          Image.asset(
            bundle.getMap("data")["url"],
            width: MediaQuery.of(context).size.width,
            height: expandedHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: expandedHeight - roundedContainerHeight - shrinkOffset,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: roundedContainerHeight,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
            ),
          ),
          Positioned(
            top: expandedHeight - 120 - shrinkOffset,
            left: 30,
            child: Column(
              children: <Widget>[
                Text(
                  bundle.getMap("data")["name"],
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  bundle.getMap("data")["describe"],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ],
      ),
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
