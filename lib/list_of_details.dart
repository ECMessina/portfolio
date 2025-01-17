import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/experience_details_button.dart';
import 'package:portfolio/utils.dart';

class ListOfDetails extends StatelessWidget {
  const ListOfDetails({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Utils.isDesktop(context);
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          "Hello, I'm",
          style: AppTextStyles.introTextStyle(context),
        ),
        Text(
          'Liz Messina',
          style: AppTextStyles.nameTextStyle(context),
        ),
        Text(
          '__ Junior Flutter Developer __',
          style: AppTextStyles.titleTextStyle(context),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'My journey began in 2023 with no prior knowledge of programming. I worked my way through numerous online courses and sample algorithms.',
            style: AppTextStyles.introTextStyle(context),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ExperienceDetailsButton(
                header: 'Courses',
                list:
                    '"The Complete Flutter Development Bootcamp" by Angela Yu @ The App Brewery\n'
                    '"Flutter & Dart - The Complete Guide (2023 Ed.)" by (Max)imilian Schwarzmuller @ Udemy\n'
                    '"The Complete Dart Developer Guide" by Andrea Bizzotto @ Code with Andrea\n'
                    '"Programming & CS" @ Brilliant',
              ),
              if (isDesktop) Spacer(),
              ExperienceDetailsButton(
                header: 'Extra Experience',
                list: 'DRY\n'
                    'Jira\n'
                    'Sourcetree\n'
                    'Postman',
              )
            ],
          ),
        ),
      ],
    );
  }
}
