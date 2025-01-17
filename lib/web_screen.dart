import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/list_of_details.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatarDetails.portfolioPic(context),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: ListOfDetails(),
                  ),
                  Spacer(),
                ],
              ),
            ),
  }
}
