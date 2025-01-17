import 'package:flutter/material.dart';

class AppColors {
  static Color appBackgroundColor = Colors.blue.shade100;
}

class SizeAdj {
  static void init(BuildContext context) {}
  static late double avatarRadius;
    avatarRadius = 130.0;
    avatarRadius = 200.0;

  static void desktop(BuildContext context) {}
class CircleAvatarDetails {
  static CircleAvatar portfolioPic(BuildContext context) {
    return CircleAvatar(
      radius: SizeAdj.avatarRadius,
      backgroundImage: AssetImage(
        'images/LinkedIn Profile Pic.jpg',
      ),
    );
  }
}
