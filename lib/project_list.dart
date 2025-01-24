import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/carousel_list_item.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({super.key});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int activeProjectIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Utils.isDesktop(context);
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          options: CarouselOptions(
            height: SizeAdj.heightOfCarousel,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(
              milliseconds: 800,
            ),
            viewportFraction: SizeAdj.slideSize,
            onPageChanged: (index, reason) {
              setState(() {
                activeProjectIndex = index;
              });
            },
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final bool isActive = index == activeProjectIndex;
            return CarouselListItem(
              projectTitle: projectSlides[index].projectTitle,
              description: projectSlides[index].description,
              iconPath: projectSlides[index].iconPath,
              url: projectSlides[index].url,
              isActive: isActive,
            );
          },
          itemCount: projectSlides.length,
        ),
        if (isDesktop) SizedBox(height: 16),
        AnimatedSmoothIndicator(
          activeIndex: activeProjectIndex,
          count: projectSlides.length,
          effect: JumpingDotEffect(
            activeDotColor: AppColors.activeDotColor,
            dotColor: AppColors.dotColor,
            dotHeight: 10,
            dotWidth: 10,
            spacing: 10,
            jumpScale: 1.5,
            verticalOffset: SizeAdj.dotJump,
          ),
        )
      ],
    );
  }
}
