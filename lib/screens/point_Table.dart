import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:provider/provider.dart';

class PointTable extends StatelessWidget {
  const PointTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: ColorManager.whiteColor,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: ColorManager.grayLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        provider.pointTableModel?.response![0].league
                                ?.standings![0][index].team?.name ??
                            'd',
                        style: getRegularStyle(color: ColorManager.background),
                      ),
                    ),
                  ],
                )),
          );
        },
        itemCount: 20,
      )),
    );
  }
}
