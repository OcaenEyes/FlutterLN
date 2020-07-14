import 'package:flutter/material.dart';
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
  BottomTabIconModel _bottomTabIconModel;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _getIconDic();
    _jsonTest();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        items: tabBarIconList
            .map((e) => BottomNavigationBarItem(
                icon: Icon(
                  e.iconId,
                  color: e.color,
                ),
                title: Text(
                  e.iconName,
                  style: TextStyle(fontSize: 12, color: e.color),
                )))
            .toList(),
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
            "textColor": "#000",
            "iconImage": "",
            "iconName": "首页",
          },
          {
            "id": 1,
            "textColor": "#000",
            "iconImage": "",
            "iconName": "发现",
          },
          {
            "id": 2,
            "textColor": "#000",
            "iconImage": "",
            "iconName": "消息",
          },
          {
            "id": 3,
            "textColor": "#000",
            "iconImage": "",
            "iconName": "我的",
          }
        ]
      }
    };
    BottomTabIconModel bottomTabIconModel = BottomTabIconModel.fromJson(response);
    List<IconList> iconList = bottomTabIconModel.data.iconList;
    IconList iconList1 = iconList[0];
    print(iconList1.iconName);
   
  }

  _jsonTest() {}

  _onTapBottomTab(int position) {
    _currentIndex = position;
    setState(() {});
  }
}
