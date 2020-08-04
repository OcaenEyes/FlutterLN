import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oceangzy/router/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  final String clientID =
      "07d7f74c70cc76f755fb4f8bdc76a8550f8a30d02fbd826fc101ca040f9384ee";
  final String clientSecret =
      "908fb3c0eecbcf2b69facfc17acf6a517d1ce29de9b8caafcaab4fea08b40cba";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: url,
        navigationDelegate: (NavigationRequest request) async {
          if (request.url.startsWith("http://oceaneyes.top")) {
            print(request.url.split('='));
            var code = request.url.split('=')[1];
            print(code);
            Response res = await Dio().post("https://dribbble.com/oauth/token",
                queryParameters: {
                  "code": code,
                  "client_id": clientID,
                  "client_secret": clientSecret
                });
            print(res.data["access_token"]);
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            await preferences.setString(
                "access_token", res.data["access_token"]);

            String token = preferences.getString("access_token");
            print("写入文件测试");
            print(token);

            Fluttertoast.showToast(
                msg: "授权成功",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.black,
                fontSize: 12);
            Navigator.pushNamedAndRemoveUntil(
                context, PageName.discovery_page.toString(), (route) => false);
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    );
  }
}
