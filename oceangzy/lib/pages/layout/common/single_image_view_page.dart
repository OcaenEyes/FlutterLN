import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_builder.dart';
import 'package:photo_view/photo_view.dart';

class SingleImageViewPage extends StatefulWidget {
  final Bundle bundle;
  SingleImageViewPage(this.bundle);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SingleImageViewPageState();
  }
}

class _SingleImageViewPageState extends State<SingleImageViewPage> {
  final ImageProvider imageProvider;
  final Widget loadingBuilder;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final String heroTag;
  _SingleImageViewPageState({
    this.imageProvider, //图片
    this.loadingBuilder, //加载时的widget
    this.backgroundDecoration, //背景修饰
    this.minScale, //最大缩放倍数
    this.maxScale, //最小缩放倍数
    this.heroTag, //hero动画tagid
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        // constraints: BoxConstraints.expand(
        //   height: MediaQuery.of(context).size.height,
        // ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: PhotoView(
                imageProvider:
                    NetworkImage(widget.bundle.getString('imageUrl')),
                backgroundDecoration: backgroundDecoration,
                minScale: minScale,
                maxScale: maxScale,
                enableRotation: true,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              right: 10,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
