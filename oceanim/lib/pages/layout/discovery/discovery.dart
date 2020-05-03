import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DiscoveryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiscoveryPageState();
  }
  
}

class _DiscoveryPageState extends State<DiscoveryPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var l = readUserInfoJson();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("发现"),),);
  }

}

readUserInfoJson() async {
  try {
    String appDirPath = (await getApplicationDocumentsDirectory()).path;
    print("读取本地json:");
    print(File('$appDirPath/userInfoJson').readAsString());
    return File('$appDirPath/userInfoJson').readAsString();
  } catch (err) {
    print(err);
  }
}
