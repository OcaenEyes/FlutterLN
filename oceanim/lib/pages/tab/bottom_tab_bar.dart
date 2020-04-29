import 'package:flutter/material.dart';
import 'package:oceanim/models/bottomTabModel.dart';
import 'package:oceanim/pages/layout/discovery/discovery.dart';
import 'package:oceanim/pages/layout/firends/friends.dart';
import 'package:oceanim/pages/layout/message/message.dart';
import 'package:oceanim/pages/layout/mine/mine.dart';
import 'package:oceanim/router/page_builder.dart';

class BottomTabBar extends StatefulWidget {
  final Bundle bundle;
  BottomTabBar(this.bundle);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomTabBarState();
  }

  // _BottomTabBarState createState() => _BottomTabBarState();
}

// 图标属性自定义
class ItemIcon {
  Color color;
  IconData iconId;
  String iconName;
  ItemIcon(this.color, this.iconId, this.iconName);
}

  //图标数据
  var tabBarIconList = [
    ItemIcon(Colors.black, Icons.message, "消息"),
    ItemIcon(Colors.black, Icons.people, "朋友"),
    ItemIcon(Colors.black, Icons.filter_vintage, "发现"),
    ItemIcon(Colors.black, Icons.person, "我的")
    
  ];
// var tabBarIconList = [
//   BottomTabModel(Colors.black, "", "消息"),
//   BottomTabModel(Colors.black, "", "朋友"),
//   BottomTabModel(Colors.black, "", "发现"),
//   BottomTabModel(Colors.black, "", "我的"),
// ];


class _BottomTabBarState extends State<BottomTabBar> {
  int _currentIndex = 0;
  List<Widget> tabViewList = List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabViewList[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        // backgroundColor: Colors.white,
        items: tabBarIconList.map((item) {
          return BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon:Icon( item.iconId,color: item.color,),
            title: Text(
              item.iconName,
              style: TextStyle(fontSize: 12, color: item.color),
            ),
          );
        }).toList(),
        currentIndex: _currentIndex,
        onTap: _onTapBottomTab,
      ),
    );
  }

  void initState() {
    tabViewList
      ..add(MessagePage())
      ..add(FriendsPage())
      ..add(DiscoveryPage())
      ..add(MinePage(widget.bundle));
    super.initState();
  }

  void _onTapBottomTab(int position) {
    _currentIndex = position;
    setState(() {
      
    });
  }
}
