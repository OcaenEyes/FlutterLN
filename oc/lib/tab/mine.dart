import 'package:flutter/material.dart';

class MinePageWidget extends StatefulWidget {
  @override
  _MinePageWidgetState createState() => _MinePageWidgetState();
}

class _MinePageWidgetState extends State<MinePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'),),
      body: ListView(
          children: <Widget>[

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),


            new ListTile(
              title: Text('条目一'),
              leading: Icon(Icons.pages),
              trailing: Text('说明一'),
            ),

          ],
          
        ),

        
    );
  }
}