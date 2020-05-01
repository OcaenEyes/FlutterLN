import 'package:flutter/material.dart';

class PhotoAlbumPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PhotoAlbumPageState();
  }
}

class _PhotoAlbumPageState extends State<PhotoAlbumPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("相册"),
      ),
    );
  }
}
