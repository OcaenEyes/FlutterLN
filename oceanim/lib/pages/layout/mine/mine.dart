import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MinePageState();
  }
  
}

class _MinePageState extends State<MinePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("我的"),),
    body: Center(child: MaterialButton(
      onPressed: (){
        Navigator.of(context).pushNamed(
           PageName.login.toString(),
          arguments: null
        );

      },
      color: Colors.black,
      child: Text("登录",style: TextStyle(color: Colors.white),),
      
      ),),);
  }

}