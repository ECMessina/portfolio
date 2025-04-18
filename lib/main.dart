import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/portfolio_details.dart';
import 'package:portfolio/utils.dart';
import 'package:portfolio/web_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Utils.isDesktop(context);
    if (isDesktop) {
      SizeAdj.desktop(context);
    } else {
      SizeAdj.init(context);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Liz's Portfolio",
      home: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: isDesktop ? WebScreen() : PortfolioDetails(),
      ),
    );
  }
}
