import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:oceaneyes/tab/discover.dart';
import 'package:oceaneyes/tab/home.dart';
import 'package:oceaneyes/tab/my.dart';

class BottomTabBarWidget extends StatefulWidget {
  @override
  _BottomTabBarWidgetState createState() => _BottomTabBarWidgetState();

} 

class _BottomTabBarWidgetState extends State<BottomTabBarWidget> {

  int _currentIndex = 0;
  List<Widget> list = List();


  @override
  void initState(){
    list
      ..add(HomeWidget())
      ..add(DiscoveryWidget())
      ..add(MyWidget());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
         BottomNavigationBarItem(
           title: new Text("首页"), 
           icon: new Icon(Icons.home)
         ),
         BottomNavigationBarItem(
           title: new Text("发现"),
           icon: new Icon(Icons.devices_other)
         ),
         BottomNavigationBarItem(
           title: new Text("我的"),
           icon: new Icon(Icons.person)
         ), 
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),

    );
  }

}