import 'package:flutter/material.dart';
import 'package:oceaneyes/discover/discoverPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DiscoveryWidget extends StatefulWidget {
  @override
  _DiscoveryWidgetState createState() => _DiscoveryWidgetState();
}

class _DiscoveryWidgetState extends State<DiscoveryWidget> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  DiscoverPageWidget(),
        width: ScreenUtil.getInstance().setWidth(750),
        height: ScreenUtil.getInstance().setHeight(1334),
      ),
    );
  }
}