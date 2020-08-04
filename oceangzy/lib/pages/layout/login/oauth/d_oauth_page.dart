import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DOauthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DOauthPageState();
  }
}

class _DOauthPageState extends State<DOauthPage> {
  String url =
      "https://dribbble.com/oauth/authorize?client_id=07d7f74c70cc76f755fb4f8bdc76a8550f8a30d02fbd826fc101ca040f9384ee&redirect_uri=http://oceaneyes.top";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: url,

        // "https://www.baidu.com"
        onPageFinished: (url) {
          print(url + 'finish');
        },
      ),
    );
  }
}
