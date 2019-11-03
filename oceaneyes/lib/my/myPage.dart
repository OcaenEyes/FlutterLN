import 'package:flutter/material.dart';

class MyPagewidget extends StatefulWidget {
  @override
  _MyPageWidgetState createState() => _MyPageWidgetState();

}

class _MyPageWidgetState extends State<MyPagewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,),
              title: new Text("个人简历"),
            ),
          ),

          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate((BuildContext context,int index){
              //创建列表
              return new Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    
                  ],
                ),
                
              );
            },
            childCount: 3,
            ),
          ),

        ],
      ),

    );
  }
}