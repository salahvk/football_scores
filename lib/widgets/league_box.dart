import 'package:flutter/cupertino.dart';
import 'package:football_scores/components/assets_manager.dart';
import 'package:football_scores/components/color_manager.dart';

class LeagueBox extends StatelessWidget {
  final int index;
  const LeagueBox({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: ColorManager.errorRed,
      height: size.height * .09,
      child: Image.asset(
        index == 0
            ? ImageAssets.laliga
            : index == 1
                ? ImageAssets.premierLeague
                : ImageAssets.serieA,
        fit: BoxFit.cover,
      ),
    );
  }
}
