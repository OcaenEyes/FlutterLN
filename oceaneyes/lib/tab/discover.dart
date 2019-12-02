import 'package:flutter/material.dart';
import 'package:oceaneyes/discover/discoverPage.dart';
class DiscoveryWidget extends StatefulWidget {
  @override
  _DiscoveryWidgetState createState() => _DiscoveryWidgetState();
}

class _DiscoveryWidgetState extends State<DiscoveryWidget> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new DiscoverPageWidget(),
      ),
    );
  }
}