import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/list_of_details.dart';

class PortfolioDetails extends StatelessWidget {
  const PortfolioDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column();
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatarDetails.portfolioPic(context),
            ),
            ListOfDetails(),
          ],
  }
}
