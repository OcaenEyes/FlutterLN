import 'package:flutter/material.dart';
import 'package:oc/tab/home.dart';
import 'package:oc/tab/discover.dart';
import 'package:oc/tab/add.dart';
import 'package:oc/tab/message.dart';
import 'package:oc/tab/mine.dart';

class BottomTabBarWidget extends StatefulWidget {
  @override
  _BottomTabBarWidgetState createState() => _BottomTabBarWidgetState();

}

class _BottomTabBarWidgetState extends State<BottomTabBarWidget> {
  int _currentIndex =0;
  List<Widget> tabViewList = List();

  void _onTapBTB(int position){
    _currentIndex =position;
    setState(() {
      
    });
  }

  void initState(){
    tabViewList
      ..add(HomePageWidget())
      ..add(DiscoverPageWidget())
      ..add(AddPageWidget())
      ..add(MessagePageWidget())
      ..add(MinePageWidget());
    super.initState();
  }



// 底部图标数据
  var tabBarIconList = [
    IteamIcon(Colors.black,Icons.home,"首页"),
    IteamIcon(Colors.black,Icons.find_in_page,"发现"),
    IteamIcon(Colors.black,Icons.add_a_photo,"发布"),
    IteamIcon(Colors.black,Icons.message,"消息"),
    IteamIcon(Colors.black,Icons.person,"我的"),   
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: tabBarIconList.map((item) {
          return BottomNavigationBarItem(
            title: Text(item.info, style: TextStyle(fontSize: 12,color: Colors.black),),
            icon: Icon(item.iconId, color: item.color),
            backgroundColor:Colors.white
          );

        }).toList(),
        currentIndex: _currentIndex,
        onTap: _onTapBTB,
      ),
    );
  }

}

// 图标属性自定义
class IteamIcon {
  Color color;
  IconData iconId;
  String info;
  IteamIcon(this.color,this.iconId,this.info);
  
}
