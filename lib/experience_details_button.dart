import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ExperienceDetailsButton extends StatelessWidget {
  const ExperienceDetailsButton({
    super.key,
    required this.header,
    required this.list,
  });

  final String header;
  final String list;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.detailsButtonColor,
      ),
      onPressed: () => _showList(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          header,
          style: AppTextStyles.introTextStyle(context),
        ),
      ),
    );
  }

  void _showList(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "$header:",
            style: AppTextStyles.introTextStyle(context),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: Text(
              list,
              style: AppTextStyles.listText(context),
              textAlign: TextAlign.center,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Close',
                style: AppTextStyles.introTextStyle(context),
              ),
            ),
          ],
        );
      },
    );
  }
}
