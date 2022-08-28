import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scores/Api/get_standings.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/widgets/table_titles.dart';
import 'package:provider/provider.dart';

class PointTable extends StatefulWidget {
  const PointTable({Key? key, required this.leagueIndex}) : super(key: key);
  final int leagueIndex;
  @override
  State<PointTable> createState() => _PointTableState();
}

class _PointTableState extends State<PointTable> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getStandings(context, widget.leagueIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: true);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Premier League Table"),
      ),
      backgroundColor: ColorManager.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 2),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    TableTitles(size: size, text: '#'),
                    SizedBox(
                      width: size.width * 0.34,
                      child: Text(
                        "Team",
                        style: getRegularStyle(color: ColorManager.background),
                      ),
                    ),
                    TableTitles(size: size, text: 'PL'),
                    TableTitles(size: size, text: 'W'),
                    TableTitles(size: size, text: 'D'),
                    TableTitles(size: size, text: 'L'),
                    TableTitles(size: size, text: 'Pts'),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final teamDetails = provider
                    .pointTableModel?.response![0].league?.standings![0][index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: ColorManager.whiteColor,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Row(
                        children: [
                          // * Team rankings

                          Container(
                            width: size.width * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              teamDetails?.rank.toString() ?? '',
                              style: getRegularStyle(
                                  color: ColorManager.background),
                            ),
                          ),

                          // * Team Logo
                          Container(
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl: teamDetails?.team?.logo ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // * Team Name
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(4, 0, size.width * 0.08, 0),
                            child: Container(
                              width: size.width * 0.24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                teamDetails?.team?.name ?? '',
                                style: getRegularStyle(
                                    color: ColorManager.background),
                              ),
                            ),
                          ),
                          TableTitles(
                              size: size,
                              text: teamDetails?.all?.played.toString() ?? ''),
                          TableTitles(
                              size: size,
                              text: teamDetails?.all?.win.toString() ?? ''),
                          TableTitles(
                              size: size,
                              text: teamDetails?.all?.draw.toString() ?? ''),
                          TableTitles(
                              size: size,
                              text: teamDetails?.all?.lose.toString() ?? ''),
                          TableTitles(
                              size: size,
                              pts: 'PTS',
                              text: teamDetails?.points.toString() ?? '')
                        ],
                      )),
                );
              },
              itemCount: provider.pointTableModel?.response![0].league
                      ?.standings![0].length ??
                  0,
            ),
          ],
        ),
      ),
    );
  }
}
