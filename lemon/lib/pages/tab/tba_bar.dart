import 'package:flutter/material.dart';
import 'package:lemon/pages/layout/home/home_page.dart';
import 'package:lemon/pages/layout/mine/my_page.dart';
import 'package:lemon/pages/layout/message/message_page.dart';

// 图标属性自定义
class ItemIcon {
  Color color;
  IconData iconId;
  String info;
  ItemIcon(this.color, this.iconId, this.info);
}

class BottomTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomTabBarState();
  }
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _currentIndex = 0;
  List<Widget> tabViewList = List();

  //图标数据
  var tabBarIconList = [
    ItemIcon(Colors.black, Icons.home, "首页"),
    ItemIcon(Colors.black, Icons.message, "消息"),
    ItemIcon(Colors.black, Icons.person, "我的")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: tabViewList[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          items: tabBarIconList.map((item) {
            return BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(item.iconId, color: item.color),
                title: Text(
                  item.info,
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ));
          }).toList(),
          currentIndex: _currentIndex,
          onTap: _onTapBottomTab,
        ));
  }

  void initState() {
    tabViewList..add(HomePage())..add(MessagePage())..add(MinePage());
    super.initState();
  }

  void _onTapBottomTab(int position) {
    _currentIndex = position;
    setState(() {});
  }
}
