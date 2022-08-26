import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';

class TableTitles extends StatelessWidget {
  TableTitles({Key? key, required this.size, required this.text, this.pts})
      : super(key: key);

  final Size size;
  final String text;
  String? pts;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.1,
      child: Text(text,
          style: pts == 'PTS'
              ? getBoldtStyle(
                  color: ColorManager.background,
                )
              : getRegularStyle(
                  color: ColorManager.background,
                )),
    );
  }
}
