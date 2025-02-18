import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ExperienceList extends StatelessWidget {
  const ExperienceList({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 10,
      children: list
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                item,
                style: AppTextStyles.listText(context),
                textAlign: TextAlign.center,
              ),
            ),
          )
          .toList(),
    );
  }
}
