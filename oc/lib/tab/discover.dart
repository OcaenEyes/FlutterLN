import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:oc/tab/discover/client.dart';

class DiscoverPageWidget extends StatefulWidget {
  @override
  _DiscoverPageWidgetState createState() => _DiscoverPageWidgetState();
}

class _DiscoverPageWidgetState extends State<DiscoverPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new MeiziList(),
        
      ),
    );
  }

}

class MeiziList extends StatefulWidget {
  @override
  _Meizi createState() => _Meizi();
}
class _Meizi extends State<MeiziList>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        
        new Column(       
          children: <Widget>[
            Text("你好",style:TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
            Text('他好',style:TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
          ],
          
        ),
        
      ],
    );
  }
}
 