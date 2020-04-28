import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget{
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Movie"),),
      body: GridView.count(crossAxisCount: 2,
      padding: EdgeInsets.all(20.0),
      crossAxisSpacing:20.0,
      mainAxisSpacing: 20.0,
      children: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
        child: Text("123"),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
        child: Text("123"),
        ),
      ],),
    );
  }

}