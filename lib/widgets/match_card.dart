import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/styles_manager.dart';
import 'package:football_scores/model/schedule_model.dart';
import 'package:football_scores/utils/convertDate.dart';

class MatchCard extends StatefulWidget {
  Teams? teams;
  Response? response;
  MatchCard({Key? key, this.teams, this.response}) : super(key: key);

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final teamName = widget.teams?.home?.name;
    final dateUtc = widget.response?.fixture?.date;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    teamName ?? '',
                    style: teamName?.length != null
                        ? getRegularStyle(
                            color: ColorManager.background,
                            fontSize: widget.teams!.home!.name!.length >= 12
                                ? 10
                                : 12)
                        : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        // color: ColorManager.grayLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: widget.teams?.home?.logo ?? '',
                          fit: BoxFit.cover,
                          // cacheManager: customCacheManager,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            widget.response?.goals?.home != null
                ? Row(
                    children: [
                      Text(
                        widget.response?.goals?.home.toString() ?? '',
                        style: getBoldtStyle(color: ColorManager.background),
                      ),
                      const Text(
                        '-',
                        style: TextStyle(color: ColorManager.background),
                      ),
                      Text(
                        widget.response?.goals?.away.toString() ?? '',
                        style: getBoldtStyle(color: ColorManager.background),
                      ),
                    ],
                  )
                : Text(convertDate(dateUtc),
                    style: getBoldtStyle(color: ColorManager.grayLight)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  // color: ColorManager.grayLight,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: widget.teams?.away?.logo ?? '',
                    fit: BoxFit.cover,
                    // cacheManager: customCacheManager,
                  ),
                ),
              ),
            ),
            Text(
              widget.teams?.away?.name ?? '',
              style: teamName?.length != null
                  ? getRegularStyle(
                      color: ColorManager.background,
                      fontSize:
                          widget.teams!.away!.name!.length >= 12 ? 10 : 12)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
