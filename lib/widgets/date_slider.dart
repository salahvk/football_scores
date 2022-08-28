import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:football_scores/Api/get_schedule.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/provider/local_provider.dart';
import 'package:football_scores/utils/date_list.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodaySlider extends StatefulWidget {
  const TodaySlider({
    Key? key,
  }) : super(key: key);

  @override
  State<TodaySlider> createState() => _TodaySliderState();
}

class _TodaySliderState extends State<TodaySlider> {
  int? s;

  @override
  void initState() {
    super.initState();
    s = 30;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
      child: CarouselSlider.builder(
        itemCount: 60,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          var newDt = DateFormat.MMMEd().format(getDates()[itemIndex]);

          return Container(
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 15,
            width: 150,
            child: Center(
              child: Text(
                itemIndex == 30 ? 'Today' : newDt,
                style: s == itemIndex
                    ? getBoldtStyle(color: ColorManager.darkBackground)
                    : getMediumtStyle(color: ColorManager.grayLight),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: false,
          height: 30,
          onPageChanged: (index, reason) {
            onPageChangedFunction(index, context);

            setState(() {
              s = index;
            });
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
    final provider = Provider.of<LocalProvider>(context, listen: false);
    getSchedule(context, date, provider.leagueIndex);
  }
}
