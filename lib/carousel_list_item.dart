import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class CarouselListItem extends StatelessWidget {
  const CarouselListItem({
    super.key,
    required this.projectTitle,
    required this.description,
    required this.iconPath,
    required this.url,
    required this.isActive,
  });

  final String projectTitle;
  final String description;
  final String iconPath;
  final String url;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.carouselItemBackgroundColor,
        elevation: 18,
        shadowColor: AppColors.carouselItemShadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            70,
          ),
        ),
      ),
      icon: isActive
          ? Image.asset(
              alignment: Alignment.center,
              iconPath,
              height: 50,
              width: 50,
            )
          : const SizedBox.shrink(),
      label: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "_${projectTitle}_",
            textAlign: TextAlign.center,
          style: AppTextStyles.listText(context),
        ),
          Text(
            description,
            style: AppTextStyles.introTextStyle(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.textColor,
            content: Text(
              "Opening $projectTitle",
              textAlign: TextAlign.center,
              selectionColor: AppColors.appBackgroundColor,
            ),
      ),
    );
      },
    );
  }
}
  }
}
