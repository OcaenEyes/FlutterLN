import 'package:flutter/material.dart';
import 'package:oceangzy/app.dart';
import 'package:oceangzy/pages/layout/launch/launch_page.dart';
import 'package:oceangzy/pages/layout/login/login_page.dart';
import 'package:oceangzy/pages/tab/bottom_tab_bar.dart';
import 'package:oceangzy/pages/layout/introduce/introduce_page.dart';
import 'package:oceangzy/router/page_router.dart';
void main() {
  PageRouter.setupRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: AppHome(),
      onGenerateRoute: PageRouter.router.generator,
    );
  }
}
