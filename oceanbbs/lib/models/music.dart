import 'package:flutter/cupertino.dart';

class Music {
  final ImageProvider image;
  final String title;
  final String singer;
  final Duration duration;

  Music({
    required this.image,
    required this.title,
    required this.singer,
    required this.duration,
  });
}
