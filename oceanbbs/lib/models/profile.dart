import 'package:flutter/cupertino.dart';

class Profile {
  final ImageProvider image;
  final String name;
  final String email;
  final int phone;

  Profile({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
  });
}
