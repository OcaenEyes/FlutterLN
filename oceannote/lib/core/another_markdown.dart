/*
 * @Descripttion: 
 * @version: V0.0.1
 * @Author: OCEAN.GZY
 * @Date: 2022-07-14 17:20:44
 * @LastEditors: OCEAN.GZY
 * @LastEditTime: 2022-07-14 19:56:47
 */
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:markdown/markdown.dart' as md;

class AnotherMardown extends StatefulWidget {
  final String data;
  const AnotherMardown({Key? key, required this.data}) : super(key: key);

  @override
  _AnotherMardownState createState() => _AnotherMardownState();
}

class _AnotherMardownState extends State<AnotherMardown> {
  @override
  Widget build(BuildContext context) {
    print(md.markdownToHtml(widget.data));
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(18),
      child: ListView(
        children: [
          HtmlWidget(md.markdownToHtml(widget.data,
              extensionSet: md.ExtensionSet.gitHubWeb))
        ],
      ),
    );
  }
}
