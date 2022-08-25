import 'package:flutter/material.dart';
import 'package:football_scores/Api/get_schedule.dart';

import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/widgets/date_slider.dart';
import 'package:football_scores/widgets/league_slider.dart';
import 'package:football_scores/widgets/match_card.dart';
import 'package:provider/provider.dart';

class TodaySchedulePage extends StatefulWidget {
  const TodaySchedulePage({Key? key}) : super(key: key);

  @override
  State<TodaySchedulePage> createState() => _TodaySchedulePageState();
}

class _TodaySchedulePageState extends State<TodaySchedulePage> {
  final date = DateTime.now().toString().substring(0, 10);
  @override
  void initState() {
    super.initState();
    getSchedule(context, date);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TodaySlider(),
            const LeagueSlider(),
            SizedBox(
              // height: size.height * .85,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  final teams = provider.scheduleModel?.response![index].teams;
                  final response = provider.scheduleModel?.response![index];
                  return MatchCard(
                    teams: teams,
                    response: response,
                  );
                },
                itemCount: provider.scheduleModel?.results ?? 0,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
