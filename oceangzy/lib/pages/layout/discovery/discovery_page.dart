import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DiscoveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiscoveryPageState();
  }
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          child: Text("登录"),
          onPressed: () {
            Navigator.pushNamed(context, PageName.d_auth.toString());
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getinfo();
  }

  _getinfo() async {
    try {
      Response res = await Dio()
          .get("https://dribbble.com/oauth/authorize", queryParameters: {
        "client_id":
            "07d7f74c70cc76f755fb4f8bdc76a8550f8a30d02fbd826fc101ca040f9384ee",
        "redirect_uri": "http://oceaneyes.top",
      });
      print(res);
      setState(() {});
    } catch (e) {
      print(e);
    }
  }
}
