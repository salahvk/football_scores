import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';

class TodaySchedulePage extends StatelessWidget {
  const TodaySchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
              child: CarouselSlider.builder(
                itemCount: 15,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  decoration: BoxDecoration(
                      color: ColorManager.whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  height: 10,
                ),
                options: CarouselOptions(
                  autoPlay: false,
                  height: 30,
                  enlargeCenterPage: true,
                  viewportFraction: 0.4,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
            ),
            CarouselSlider.builder(
              itemCount: 15,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                color: ColorManager.errorRed,
                height: 50,
              ),
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
