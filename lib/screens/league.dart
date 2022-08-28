import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/screens/point_Table.dart';
import 'package:football_scores/utils/leagueTableList.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (ctx) {
              return PointTable(
                leagueIndex: index,
              );
            }));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
            child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          (tableList[index][1]),
                        ),
                      )),
                  title: Text(
                    tableList[index][0],
                    style: getSemiBoldtStyle(
                        color: ColorManager.background, fontSize: 14),
                  ),
                )),
          ),
        );
      },
      itemCount: 3,
    )));
  }
}
