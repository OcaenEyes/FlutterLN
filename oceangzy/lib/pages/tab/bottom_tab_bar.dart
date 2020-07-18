import 'dart:convert';
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

class _BottomTabBarState extends State<BottomTabBar> {
  Map<String, dynamic> iconDic = {};
  int _currentIndex = 0;
  List<IconList> _iconList;
  List<Widget> tabViewList = List();
  @override
  void initState() {
    tabViewList..add(HomePage())..add(InformationPage());
    _getIconDic();
    _jsonTest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabViewList[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Colors.black,
        
        items: _iconList.map((item) {
          return BottomNavigationBarItem(
              icon: ImageIcon(NetworkImage(item.iconImage)),
              title: Text(
                item.iconName,
                style: TextStyle(color: Color(item.textColor)),
              ));
        }).toList(),
        onTap: _onTapBottomTab,
        currentIndex: _currentIndex,
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
            "iconName": "首页",
          },
          {
            "id": 1,
            "textColor": 0xFFFFFFFF,
            "iconImage":
                "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
            "iconName": "发现",
          },
          // {
          //   "id": 2,
          //   "textColor": 0xFF000000,
          //   "iconImage":
          //       "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
          //   "iconName": "消息",
          // },
          // {
          //   "id": 3,
          //   "textColor": 0xFF000000,
          //   "iconImage":
          //       "http://sc.admin5.com/uploads/allimg/100202/111QGU1-7.png",
          //   "iconName": "我的",
          // }
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
