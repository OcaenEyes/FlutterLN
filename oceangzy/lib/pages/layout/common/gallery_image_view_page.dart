import 'package:flutter/material.dart';
import 'package:oceangzy/router/page_builder.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryImageViewPage extends StatefulWidget {
  final Bundle bundle;
  GalleryImageViewPage(this.bundle);
  _GalleryImageViewPageState createState() => _GalleryImageViewPageState();
}

class _GalleryImageViewPageState extends State<GalleryImageViewPage> {
  PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              child: PhotoViewGallery.builder(
                itemCount: widget.bundle.getList("images").length,
                pageController: _pageController,
                enableRotation: true,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    heroAttributes: PhotoViewHeroAttributes(tag: "simple"),
                    imageProvider:
                        NetworkImage(widget.bundle.getList("images")[index]),
                  );
                },
                scrollPhysics: BouncingScrollPhysics(),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "${_currentIndex + 1}/${widget.bundle.getList("images").length}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: MediaQuery.of(context).padding.top,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
