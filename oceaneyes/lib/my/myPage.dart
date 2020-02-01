import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyPagewidget extends StatefulWidget {
  @override
  _MyPageWidgetState createState() => _MyPageWidgetState();
}

class _MyPageWidgetState extends State<MyPagewidget> {
  @override
  void initState() {
    getProjects();
    super.initState();
  }


  List results = new List();
  Future getProjects() async {
    try {
      Response response;
      Dio dio = new Dio();
      response =
          await dio.get("http://192.168.0.107:8080/youone-default");
      Map data = response.data;
      results =data["content"];
      debugPrint("接口被请求了");
      print(results);
      return results;
    } catch (e) {
      return debugPrint(e + "异常了");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我的"),
        ),
        body: new ListView(
          children: <Widget>[
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:Colors.black26,
              ),
              child: Text("第二部分"),
              margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
            ),
            Container(
              height: 500,
              color: Colors.black,
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (BuildContext context, int i) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(10.0),
                    ),
                    margin: EdgeInsets.fromLTRB(16, 0, 16, 20),
                    child: Column(
                      children: <Widget>[
                        Text(results[i]['id']),
                        Image.network(results[i]['imgUrl']),
                        Text(results[i]['textContent']),
                        Text(results[i]['imgAuther']),
                        Text(results[i]['textNum']),
                      ],
                    ),
                  );
                },
              ),
            ),
            new  Container(
              child: Text("今日贺卡",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              margin: EdgeInsets.fromLTRB(16,0,16,2),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(16, 10, 16, 20),
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    color: Colors.black12,
                    margin: EdgeInsets.only(right: 16),
                  ),
                  Container(
                    width: 180,
                    color: Colors.black26,
                    margin: EdgeInsets.only(right: 16),
                  ),
                  Container(
                    width: 180,
                    margin: EdgeInsets.only(right: 16),
                    color: Colors.black38,
                  ),
                  Container(
                    width: 180,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
            
          ],
        ));
  }
}
