import 'package:flutter/material.dart';

class Utils {
  static bool isDesktop(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1401) {
      return true;
    } else {
      return false;
    }
  }
}
