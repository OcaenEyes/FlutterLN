import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceangzy/models/youoneInformationModel.dart';

class InformationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InformationPageState();
  }

  // _InformationPageState createState<>  => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  List<Content> _content = [];
  int _pn;
  bool _isfirst;
  bool _islast;
  ScrollController _scrollController = new ScrollController();
  bool _showBackTop = false;

  @override
  void initState() {
    // TODO: implement initState
    _getInformation(_pn);
    //
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= 800) {
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
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Daliy",
          style: TextStyle(color: Colors.white),
        ),
        brightness: Brightness.dark,
      ),
      backgroundColor: Color(0xFF000000),
      body: _content == null || _content.length == 0
          ? Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              color: Colors.black,
              child: ListView.builder(
                itemCount: _content.length,
                controller: _scrollController,
                itemBuilder: (context, index) {
                  return index == _content.length
                      ? _loadingMore
                      : Container(
                          width: MediaQuery.of(context).size.width-20,
                          padding: EdgeInsets.fromLTRB(20, 8, 20, 12),
                          // height: 240,
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          _content[index].textNum.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                        Text(
                                          _content[index].imgAuther.toString(),
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          _content[index].day.toString() +
                                              '/' +
                                              _content[index].mon.toString(),
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    )),

                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 220,
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              _content[index].imgUrl),
                                          fit: BoxFit.cover)),
                                ),
                                // Text(_content[index].imgUrl.toString()),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    _content[index].textContent.toString(),
                                    style: TextStyle(fontSize: 18, height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                },
              ),
              onRefresh: _refreshInformation),
      floatingActionButton: _showBackTop
          ? FloatingActionButton(
              mini: true,
              tooltip: "返回顶部",
              onPressed: () {
                // scrollController 通过 animateTo 方法滚动到某个具体高度
                // duration 表示动画的时长，curve 表示动画的运行方式，flutter 在 Curves 提供了许多方式
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

  Future<dynamic> _refreshInformation() async {
    // Future.delayed(Duration(seconds: 2), () {
    //   _freshInformation();
    // });
    _freshInformation();
  }

  _freshInformation() async {
    try {
      Response response = await Dio().get(
          "http://192.168.10.104:8081/getYouOneInfo",
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

  _getInformation(int i) async {
    try {
      FormData formaData = new FormData.fromMap({});
      Response response = await Dio().get(
          "http://192.168.10.104:8081/getYouOneInfo",
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

    // var response = {
    //   "last": false,
    //   "totalPages": 264,
    //   "pageSize": 10,
    //   "pageNum": 1,
    //   "content": [
    //     {
    //       "id": 2628,
    //       "imgUrl": "http://image.wufazhuce.com/Fkeev8UMNcJB_V5jIQ6ReTnjxypL",
    //       "textNum": "VOL.2629",
    //       "imgAuther": "摄影",
    //       "textContent": "读书不是为了雄辩和驳斥，也不是为了轻信和盲从，而是为了思考和权衡。",
    //       "mon": "Dec 2019",
    //       "day": "18"
    //     },
    //     {
    //       "id": 2627,
    //       "imgUrl": "http://image.wufazhuce.com/Fk884ilQsdxc7UOxiQLSeNP1lhCL",
    //       "textNum": "VOL.2628",
    //       "imgAuther": "摄影",
    //       "textContent": "路不要紧，保持走要紧。",
    //       "mon": "Dec 2019",
    //       "day": "17"
    //     },
    //     {
    //       "id": 2626,
    //       "imgUrl": "http://image.wufazhuce.com/FgB2_VODnhsZasbmi-NWdAviX1S_",
    //       "textNum": "VOL.2627",
    //       "imgAuther": "摄影",
    //       "textContent": "当年轻的时候，可以选择为理想而崇高地死；当年长的时候，可以为理想而卑微地活。",
    //       "mon": "Dec 2019",
    //       "day": "16"
    //     },
    //     {
    //       "id": 2625,
    //       "imgUrl": "http://image.wufazhuce.com/Fp856XD1fra1ZF-H7soP0kZ2hyvj",
    //       "textNum": "VOL.2626",
    //       "imgAuther": "插画",
    //       "textContent": "虚荣心在人们心中如此稳固，因此每个人都希望受人羡慕；即使写这句话的我和念这句话的你都不例外。",
    //       "mon": "Dec 2019",
    //       "day": "15"
    //     },
    //     {
    //       "id": 2624,
    //       "imgUrl": "http://image.wufazhuce.com/FvFWmiglCYbss97c10HmCmwVD3hR",
    //       "textNum": "VOL.2625",
    //       "imgAuther": "摄影",
    //       "textContent": "最好丢弃天真，保持骄傲，学会冷静。通过或多或少的努力，人们一定能够过上自己希望的生活。",
    //       "mon": "Dec 2019",
    //       "day": "14"
    //     },
    //     {
    //       "id": 2623,
    //       "imgUrl": "http://image.wufazhuce.com/FsZd9-yQJ2jFFJkbJecVkMNcqChV",
    //       "textNum": "VOL.2624",
    //       "imgAuther": "插画",
    //       "textContent":
    //           "不要虚掷你的黄金时代，不要去倾听枯燥乏味的东西，不要设法挽留无望的失败，不要把你的生命献给无知、平庸和低俗。",
    //       "mon": "Dec 2019",
    //       "day": "13"
    //     },
    //     {
    //       "id": 2622,
    //       "imgUrl": "http://image.wufazhuce.com/FgGXMbxar0lIb9xCfRqITfZr86mE",
    //       "textNum": "VOL.2619",
    //       "imgAuther": "摄影",
    //       "textContent": "毕竟一生热爱回头太难，苦和甜都往心里藏吧。",
    //       "mon": "Dec 2019",
    //       "day": "8"
    //     },
    //     {
    //       "id": 2621,
    //       "imgUrl": "http://image.wufazhuce.com/Fu5BfK9yimn4YUSNadXcTzskqyPx",
    //       "textNum": "VOL.2616",
    //       "imgAuther": "国画",
    //       "textContent": "世上的事，认真不对，不认真更不对，执着不对，一切视��空也不对，平平常常，自自然然。",
    //       "mon": "Dec 2019",
    //       "day": "5"
    //     },
    //     {
    //       "id": 2620,
    //       "imgUrl": "http://image.wufazhuce.com/FlJFdv41mLSvQXhP4imoZJKQyWBn",
    //       "textNum": "VOL.2611",
    //       "imgAuther": "插画",
    //       "textContent": "三分钟热度是个好词，用三分钟热度充实生活，便成了热爱生活。",
    //       "mon": "Nov 2019",
    //       "day": "30"
    //     },
    //     {
    //       "id": 2619,
    //       "imgUrl": "http://image.wufazhuce.com/FoC8B8u_FMRtCH5lyg29cWkL-50k",
    //       "textNum": "VOL.2610",
    //       "imgAuther": "插画",
    //       "textContent": "热爱，就是一种天赋。你���一定最优秀，但���有一股冲��儿，哪怕自己干得不行，也不想放弃，这就是天赋。",
    //       "mon": "Nov 2019",
    //       "day": "29"
    //     }
    //   ],
    //   "first": false
    // };
    // YouoneInformationModel youoneInformationModel =
    //     YouoneInformationModel.fromJson(response);
    // List<Content> content = youoneInformationModel.content;
    // _content = content;
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
