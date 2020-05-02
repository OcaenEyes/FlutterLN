import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oceanim/router/page_builder.dart';
import 'package:oceanim/router/page_routes.dart';

class AddFriendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddFriendPageState();
  }
}

class _AddFriendPageState extends State<AddFriendPage> {
  final TextEditingController _searchController = new TextEditingController();
  List users = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("添加好友"),
      ),
      body: ListView(
        children: <Widget>[
          searcInput(_searchController),
          
          SizedBox(
            height: 10,
          ),
          searchResult(users),
        ],
      ),
    );
  }

  void _handleSearch(String phone) async {
    print(phone);
    List _list = [];
    Dio dio = new Dio();
    Response response;
    response = await dio.get("http://192.168.10.103:8080/searchUser",queryParameters: {"phone": phone});
    print(response.data);
    setState(() {
      _list.add(response.data["userInfo"]);
      users = _list;
    });
  }


  // 搜索输入控件
  dynamic searcInput(_searchController) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                controller: _searchController,
                onSubmitted: _handleSearch,
                decoration: InputDecoration.collapsed(hintText: "账号/手机号"),
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

dynamic searchResult(users) {
  print(users);
  return ListView.builder(
    itemBuilder: (context, index) {
      return searchResultItem(context, users[index]);
    },
    itemCount: users.length,
    shrinkWrap: true,
  );
}

dynamic searchResultItem(context, user) {
  print(user);
  return user
      ? Column(
          children: <Widget>[
            Container(
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
                          image: AssetImage(user["avatarUrl"]),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  user["nickName"],
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                onTap: () {
                  print(user);
                  Navigator.pushNamed(context, PageName.userdetial.toString(),
                      arguments: Bundle()..putMap("userinfo", user));
                },
              ),
            ),
            Divider(
              color: Colors.black12,
              indent: 68,
              height: 0,
            ),
          ],
        )
      : Container(
          child: Text("用户不存在"),
        );
}
