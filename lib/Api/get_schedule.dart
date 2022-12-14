import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:football_scores/Api/api_key.dart';
import 'package:football_scores/Api/endpoint.dart';
import 'package:football_scores/Api/error_handling.dart';
import 'package:football_scores/Api/leagueId.dart';
import 'package:football_scores/model/schedule_model.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/provider/local_provider.dart';
import 'package:football_scores/utils/snack_bar.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

getSchedule(BuildContext context, date, leagueIndex) async {
  try {
    final provider = Provider.of<DataProvider>(context, listen: false);
    final lProvider = Provider.of<LocalProvider>(context, listen: false);
    final league = leagueList[leagueIndex];
    final boxName = "$date$league";
    final isExist = await Hive.boxExists(boxName);
    lProvider.sliderDateData(date);

    if (!isExist) {
      print("Request gone");
      var response = await http.get(
          Uri.parse("$endPoint/fixtures?date=$date&league=$league&season=2022"),
          headers: {"x-apisports-key": apiKey1});
      // ignore: use_build_context_synchronously
      errorHandling(response, context);
      var jsonResponse = jsonDecode(response.body);
      var scheduleModel = ScheduleModel.fromJson(jsonResponse);
      provider.scheduleModelData = scheduleModel;
      var box = await Hive.openBox(boxName);
      box.add(response.body);
    } else {
      print("Box exists");
      var box = await Hive.openBox(boxName);

      final boxData = box.values.first;
      var jsonResponse = jsonDecode(boxData);
      var scheduleModel = ScheduleModel.fromJson(jsonResponse);
      provider.scheduleModelData = scheduleModel;
    }
  } on Exception catch (_) {
    showSnackBar("Something Went Wrong", context);
  }
}
