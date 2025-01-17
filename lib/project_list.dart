import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/constants.dart';

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
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return projectSlides[index];
          },
          itemCount: projectSlides.length,
        ),
      ],
    );
  }
}
