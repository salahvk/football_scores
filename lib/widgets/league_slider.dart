import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:football_scores/widgets/league_box.dart';

class LeagueSlider extends StatelessWidget {
  const LeagueSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          LeagueBox(index: itemIndex),
      options: CarouselOptions(
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        aspectRatio: 2.0,
        initialPage: 1,
      ),
    );
  }
}
