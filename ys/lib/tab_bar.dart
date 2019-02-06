import 'package:flutter/material.dart';
import 'package:ys/tab/home.dart';
import 'package:ys/tab/mine.dart';
import 'package:ys/tab/discover.dart';
import 'package:ys/tab/add.dart';
import 'package:ys/tab/message.dart';

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
      ..add(HomePageWidget())
      ..add(DiscoverPageWidget())
      ..add(AddPageWidget())
      ..add(MessagePageWidget())
      ..add(MinePageWidget());
      super.initState();
  }




  @override

  Widget build(BuildContext context){

    return Scaffold(
      body: list[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('首页'),
          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.find_in_page),
            title: new Text('发现'),

          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.add_a_photo),
            title: new Text('发布'),
          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text('消息'),
          ),


          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('我的'),
          ),

        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,

      ),

    );

  }
}