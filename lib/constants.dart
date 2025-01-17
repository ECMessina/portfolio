import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color appBackgroundColor = Colors.blue.shade100;
  static Color textColor = Colors.blueGrey.shade900;
  static Color detailsButtonColor = Colors.blue.shade200;
}

class SizeAdj {
  static void init(BuildContext context) {}
  static late double fontForSizeIntro;
  static late double fontForSizeName;
  static late double fontForSizeTitle;
  static late double fontForSizeList;
  static late double avatarRadius;
    avatarRadius = 130.0;
    fontForSizeIntro = 20;
    fontForSizeName = 30;
    fontForSizeTitle = 32;
    fontForSizeList = 15;
    avatarRadius = 200.0;
    fontForSizeIntro = 28;
    fontForSizeName = 40;
    fontForSizeTitle = 50;
    fontForSizeList = 24;
class AppTextStyles {
  static TextStyle introTextStyle(BuildContext context) {
    return GoogleFonts.newsreader(
      fontSize: SizeAdj.fontForSizeIntro,
      color: AppColors.textColor,
    );
  }

  static TextStyle nameTextStyle(BuildContext context) {
    return GoogleFonts.newsreader(
      fontSize: SizeAdj.fontForSizeName,
      color: AppColors.textColor,
    );
  }

  static TextStyle titleTextStyle(BuildContext context) {
    return GoogleFonts.newsreader(
      fontSize: SizeAdj.fontForSizeTitle,
      color: AppColors.textColor,
    );
  }

  static TextStyle listText(BuildContext context) {
    return GoogleFonts.libreBaskerville(
      fontSize: SizeAdj.fontForSizeList,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    );
  }
}

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
