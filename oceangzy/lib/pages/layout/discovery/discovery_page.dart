import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceangzy/models/youoneInformationModel.dart';
import 'package:oceangzy/router/page_builder.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:oceangzy/util/adress.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiscoveryPageState();
  }
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  String _token = "";
  List<Content> _content = [];
  int _pn;
  bool _isfirst;
  bool _islast;
  ScrollController _scrollController = new ScrollController();
  bool _showBackTop = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _content == null || _content.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              color: Colors.black,
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      12, MediaQuery.of(context).padding.top, 12, 0),
                  child: StaggeredGridView.countBuilder(
                      controller: _scrollController,
                      crossAxisCount: 4,
                      padding: EdgeInsets.all(8.0),
                      itemCount: _content.length,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      itemBuilder: (context, index) {
                        return index == _content.length - 1
                            ? _loadingMore()
                            : GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: NetworkImage(_content[index]
                                              .imgUrl
                                              .toString()),
                                          fit: BoxFit.cover)),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    PageName.gallery_image.toString(),
                                    arguments: Bundle()
                                      ..putList(
                                          'images', [_content[index].imgUrl]),
                                  );
                                },
                              );
                      },
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.count(2, index == 0 ? 2.5 : 3);
                      })),
              onRefresh: _refreshInformation),
      floatingActionButton: _showBackTop
          ? FloatingActionButton(
              mini: true,
              tooltip: "返回顶部",
              onPressed: () {
                // scrollController 通过 animateTo 方法滚动到某个具体高度
                // duration 表���动画的时长，curve 表示动画的运行方式，flutter 在 Curves 提供了许多方式
                _scrollController.animateTo(0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.vertical_align_top,
                color: Colors.black,
              ),
            )
          : null,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getConf();
    _getInformation(_pn);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 400) {
        setState(() {
          _showBackTop = true;
        });
      } else {
        setState(() {
          _showBackTop = false;
        });
      }

      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        Fluttertoast.showToast(
            msg: "已加载更多内容",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 12);
        _islast == false
            ? _getInformation(_pn + 1)
            : Fluttertoast.showToast(
                msg: "没有更多了",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 12);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _getConf() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString("access_token");
    print("写入文件测试2");
    print(token);
    _token = token;
  }

  _getInformation(int i) async {
    try {
      FormData formaData = new FormData.fromMap({});
      Response response = await Dio().get(
          Address.dev_base_url + "/getYouOneInfo",
          queryParameters: {'page': i});
      print(response);
      Map map = response.data;
      YouoneInformationModel youoneInformationModel =
          YouoneInformationModel.fromJson(map);
      List<Content> content = youoneInformationModel.content;
      int pn = youoneInformationModel.pageNum;
      bool isfirst = youoneInformationModel.first;
      bool islast = youoneInformationModel.last;
      setState(() {
        _content.addAll(content);
        _pn = pn;
        _isfirst = isfirst;
        _islast = islast;
        print(_content);
        print(_pn);
        print(_isfirst);
        print(_islast);
      });
    } catch (e) {
      print(e);
    }
  }

  _freshInformation() async {
    try {
      Response response = await Dio().get(
          Address.dev_base_url + "/getYouOneInfo",
          queryParameters: {'page': 0});
      print(response);
      if (response.statusCode == 200) {
        Fluttertoast.showToast(
            msg: "刷新成功",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 12);

        Map map = response.data;
        YouoneInformationModel youoneInformationModel =
            YouoneInformationModel.fromJson(map);
        List<Content> content = youoneInformationModel.content;
        int pn = youoneInformationModel.pageNum;
        bool isfirst = youoneInformationModel.first;
        bool islast = youoneInformationModel.last;
        setState(() {
          _content = content;
          _pn = pn;
          _isfirst = isfirst;
          _islast = islast;
          print(_content);
          print(_pn);
          print(_isfirst);
          print(_islast);
        });
      } else {
        Fluttertoast.showToast(
            msg: "刷新失败",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 12);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> _refreshInformation() async {
    // Future.delayed(Duration(seconds: 2), () {
    //   _freshInformation();
    // });
    _freshInformation();
  }

  _loadingMore() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
      child: Opacity(
        opacity: 1.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SpinKitChasingDots(
              color: Colors.black54,
              size: 18,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: new Text('正在加载中...'))
          ],
        ),
      ),
    );
  }
}
