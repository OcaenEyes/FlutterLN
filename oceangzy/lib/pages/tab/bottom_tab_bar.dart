import 'package:flutter/material.dart';

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
  ItemIcon(Colors.black, Icons.person, "MNE"),ItemIcon(Colors.black, Icons.person, "MIE"),ItemIcon(Colors.black, Icons.person, "NE"),ItemIcon(Colors.black, Icons.person, "IE")
];

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          items: tabBarIconList.map((e) => BottomNavigationBarItem(
            icon: Icon(e.iconId,color: e.color,),
            title: Text(e.iconName,style: TextStyle(fontSize: 12,color: e.color),)
          )).toList()
          
          ),
    );
  }
}
