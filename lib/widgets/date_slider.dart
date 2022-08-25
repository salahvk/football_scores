import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:football_scores/Api/get_schedule.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/utils/date_list.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class TodaySlider extends StatelessWidget {
  const TodaySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
      child: CarouselSlider.builder(
        itemCount: 60,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          var newDt = DateFormat.MMMEd().format(getDates()[itemIndex]);
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: ColorManager.whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 15,
              width: 150,
              child: Center(
                child: Text(
                  newDt,
                  style: getMediumtStyle(color: ColorManager.darkBackground),
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: false,
          height: 30,
          onPageChanged: (index, reason) {
            onPageChangedFunction(index, context);
          },
          enlargeCenterPage: true,
          viewportFraction: 0.3,
          aspectRatio: 2.0,
          initialPage: 30,
        ),
      ),
    );
  }

  onPageChangedFunction(index, context) {
    final date = getDates()[index].toString().substring(0, 10);
    Hive.close();
    getSchedule(context, date);
  }
}
