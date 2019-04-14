import 'package:flutter/material.dart';
import '../tabbar/home.dart';
import '../tabbar/discover.dart';
import '../tabbar/message.dart';
import '../tabbar/mine.dart';

class BottomTabBarWidget extends StatefulWidget {
  @override
  _BottomTabBarWidgetState createState() => _BottomTabBarWidgetState();
}

  //图标属性自定义
class ItemIcon {
  Color color;
  IconData iconId;
  String info;
  ItemIcon(this.color,this.iconId,this.info);    
}

class _BottomTabBarWidgetState extends State<BottomTabBarWidget>{
  
  int _currentIndex = 0;
  List<Widget>tabViewList = List();
  @override
  void initState(){
    tabViewList
      ..add(HomePageWidget())
      ..add(DiscoverPageWidget())
      ..add(MessagePageWidget())
      ..add(MinePageWidget());
    super.initState();
  }

  //tab点击事件
  void _onTapTab(int position){
    _currentIndex = position;
    setState(() {
      
    });
  }

  //底部图标数据
  var tabBarIconList = {
    ItemIcon(Colors.black,Icons.home,"首页"),
    ItemIcon(Colors.black,Icons.find_in_page,"发现"),
    ItemIcon(Colors.black,Icons.message,"消息"),
    ItemIcon(Colors.black,Icons.person,"我的"),
  };


  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: tabBarIconList.map((item){
          return BottomNavigationBarItem(
            title: Text(item.info, style:TextStyle(color:item.color,fontSize:12,)),
            icon: Icon(item.iconId,color: item.color,),
            backgroundColor: Colors.white,
          );
        }).toList(),
        currentIndex: _currentIndex,
        onTap: _onTapTab,
      ),
    );
  }
}