import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class CarouselListItem extends StatelessWidget {
  const CarouselListItem({
    super.key,
    required this.projectTitle,
  });

  final String projectTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          projectTitle,
          style: AppTextStyles.listText(context),
        ),
      ),
    );
  }
}
