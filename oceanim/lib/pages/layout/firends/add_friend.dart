import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';
import 'package:oceanim/util/Address.dart';

class AddFriendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddFriendPageState();
  }
}

class _AddFriendPageState extends State<AddFriendPage> {
  final TextEditingController _searchController = new TextEditingController();
  var res;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("添加好友"),
      ),
      body: ListView(
        children: <Widget>[
          searchInput(_searchController),
          SizedBox(
            height: 10,
          ),
          searchResult(context, res, _searchController),
        ],
      ),
    );
  }

  void _handleSearch(String phone) async {
    print(phone);
    if (phone != "") {
      Dio dio = new Dio();
      Response response;
      response = await dio.get(Address.dev_base_url+"/searchUser",
          queryParameters: {"phone": phone});
      print(response.data);
      setState(() {
        res = response.data;
      });
    } else {
      setState(() {
        res = null;
      });
    }
  }

  // 搜索输入控件
  dynamic searchInput(_searchController) {
    return Container(
      height: 100,
      color: Colors.amber,
    
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: _searchController,
                onSubmitted: _handleSearch,
                decoration: InputDecoration.collapsed(
                    hintText: "账号/手机号"),
                onChanged: _handleSearch,
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _handleSearch(_searchController.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}

dynamic searchResult(context, res, _searchController) {
  if (res != null) {
    return res["userInfo"] != null
        ? Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 66,
            padding: EdgeInsets.only(left: 10),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: AssetImage(res["userInfo"]["avatarUrl"]),
                        fit: BoxFit.cover)),
              ),
              title: Text(
                res["userInfo"]["nickName"],
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, PageName.add_friend_detial.toString(),
                    arguments: Bundle()..putMap("userinfo", res["userInfo"]));
              },
            ),
          )
        : Container(
            child: Center(child: Text(res["message"])),
          );
  } else {
    return Container(
      child: Center(
        child: Text("搜索一下试试吧"),
      ),
    );
  }
}
