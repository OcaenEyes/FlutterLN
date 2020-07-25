import 'dart:convert';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:oceangzy/pages/layout/information/information_page.dart';
import 'package:oceangzy/pages/layout/home/home_page.dart';
import 'package:oceangzy/models/bottomTabIconModel.dart';

class BottomTabBar extends StatefulWidget {
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
  ItemIcon(Colors.black, Icons.home, "HOME"),
  ItemIcon(Colors.black, Icons.person, "MNE"),
  ItemIcon(Colors.black, Icons.person, "MIE"),
  ItemIcon(Colors.black, Icons.person, "NE"),
  ItemIcon(Colors.black, Icons.person, "IE")
];

class _BottomTabBarState extends State<BottomTabBar>
    with SingleTickerProviderStateMixin {
  Map<String, dynamic> iconDic = {};
  int _currentIndex = 0;
  TabController _tabController;
  List<IconList> _iconList;
  List<Widget> tabViewList = List();
  @override
  void initState() {
    tabViewList..add(HomePage())..add(InformationPage());

    _getIconDic();
    _tabController = TabController(vsync: this, length: _iconList.length)
      ..addListener(() {
        setState(() {
          _currentIndex = _tabController.index;
        });
      });
    _jsonTest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabViewList[_currentIndex],
      // bottomNavigationBar: new BottomNavigationBar(
      //   backgroundColor: Colors.black,
      //   items: _iconList.map((item) {
      //     return BottomNavigationBarItem(
      //         backgroundColor: Colors.black,
      //         // icon: Image(
      //         //   image: NetworkImage(item.iconImage),
      //         //   width: 24,
      //         //   height: 24,
      //         // ),
      //         icon: Icon(Icons.ac_unit),
      //         title: Text(
      //           item.iconName,
      //           style: TextStyle(color: Color(item.textColor)),
      //         ));
      //   }).toList(),
      //   onTap: _onTapBottomTab,
      //   currentIndex: _currentIndex,
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black,
        index: _currentIndex,
        height: 56,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _tabController.animateTo(index,
              duration: Duration(milliseconds: 100), curve: Curves.ease);
        },
        items: _iconList.map((item) {
          return Icon(
            Icons.ac_unit,
            color: Colors.white,
          );
        }).toList(),
      ),
    );
  }

  _getIconDic() {
    var response = {
      "status": 0000,
      "data": {
        "iconList": [
          {
            "id": 0,
            "textColor": 0xFFFFFFFF,
            "iconImage":
                "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
            "iconName": "Discover",
          },
          {
            "id": 1,
            "textColor": 0xFFFFFFFF,
            "iconImage":
                "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
            "iconName": "Daliy",
          },
          {
            "id": 2,
            "textColor": 0xFFFFFFFF,
            "iconImage":
                "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
            "iconName": "Message",
          },
          {
            "id": 3,
            "textColor": 0xFFFFFFFF,
            "iconImage":
                "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
            "iconName": "Mine",
          }
        ]
      }
    };
    print(tabBarIconList);

    BottomTabIconModel bottomTabIconModel =
        BottomTabIconModel.fromJson(response);
    List<IconList> iconList = bottomTabIconModel.data.iconList;
    _iconList = iconList;
    print(_iconList);
    print(bottomTabIconModel.data.iconList[0].textColor);

    String json1 = json.encode(bottomTabIconModel);
    print(json1);
  }

  _jsonTest() {}

  _onTapBottomTab(int position) {
    _currentIndex = position;
    setState(() {});
  }
}
