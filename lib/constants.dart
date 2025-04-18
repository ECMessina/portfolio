import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/carousel_list_item.dart';

final List<String> kCoursesList = [
  '"The Complete Flutter Development Bootcamp" by Angela Yu @ The App Brewery',
  '"Flutter & Dart - The Complete Guide (2023 Ed.)" by (Max)imilian Schwarzmuller @ Udemy',
  '"The Complete Dart Developer Guide" by Andrea Bizzotto @ Code with Andrea',
  '"Programming & CS" @ Brilliant',
  '"Flutter UI Challenges" by Andrea Bizzotto @ Code with Andrea',
];

final List<String> kExtraExperiencesList = [
  'DRY',
  'Jira',
  'Sourcetree',
  'Postman',
];

final List<CarouselListItem> kProjectSlides = [
  CarouselListItem(
    projectTitle: "MK8",
    description: 'Featuring riverpod',
    iconPath: 'images/mk8.png',
    url: 'https://github.com/ECMessina/mk8_randomizer',
    isActive: false,
  ),
  CarouselListItem(
    projectTitle: "Tip?",
    description: 'Featuring forms & arithmetic',
    iconPath: 'images/tip_calc.png',
    url: 'https://github.com/ECMessina/tip_calc',
    isActive: false,
  ),
  CarouselListItem(
    projectTitle: "Roll It!",
    description: 'Featuring sound & animation',
    iconPath: 'images/roll_dice.png',
    url: 'https://github.com/ECMessina/roll_it',
    isActive: false,
  ),
  CarouselListItem(
    projectTitle: "Weather?",
    description: 'Featuring permissions & API responses',
    iconPath: 'images/weather.png',
    url: 'https://github.com/ECMessina/weather',
    isActive: false,
  ),
  CarouselListItem(
    projectTitle: "I'm Bored",
    description: 'Featuring riverpod & API responses',
    iconPath: 'images/bored.png',
    url: 'https://github.com/ECMessina/bored',
    isActive: false,
  ),
];

class AppColors {
  static Color appBackgroundColor = Colors.blue.shade100;
  static Color textColor = Colors.blueGrey.shade900;
  static Color detailsButtonColor = Colors.blue.shade200;
  static Color carouselItemBackgroundColor = Colors.blue.shade300;
  static Color carouselItemShadowColor = Colors.blue.shade500;
  static Color dotColor = Colors.blueGrey.shade300;
  static Color activeDotColor = const Color.fromARGB(255, 5, 33, 75);
}

class SizeAdj {
  static late double fontForSizeIntro;
  static late double fontForSizeName;
  static late double fontForSizeTitle;
  static late double fontForSizeList;
  static late double heightOfCarousel;
  static late double avatarRadius;
  static late double slideSize;
  static late double dotJump;

  static void init(BuildContext context) {
    avatarRadius = 130.0;
    heightOfCarousel = 175.0;
    slideSize = 0.5;
    dotJump = 15;
    fontForSizeIntro = 20;
    fontForSizeName = 30;
    fontForSizeTitle = 32;
    fontForSizeList = 15;
  }

  static void desktop(BuildContext context) {
    avatarRadius = 200.0;
    heightOfCarousel = 280.0;
    slideSize = 0.2;
    dotJump = 20;
    fontForSizeIntro = 28;
    fontForSizeName = 40;
    fontForSizeTitle = 50;
    fontForSizeList = 24;
  }
}

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
