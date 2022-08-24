import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:football_scores/Api/api_key.dart';
import 'package:football_scores/Api/endpoint.dart';
import 'package:football_scores/Api/error_handling.dart';
import 'package:football_scores/model/schedule_model.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/utils/snack_bar.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

getSchedule(BuildContext context, date) async {
  try {
    final provider = Provider.of<DataProvider>(context, listen: false);

    final isExist = await Hive.boxExists(date);
    // print(isExist);
    // await Hive.deleteBoxFromDisk(date);
    // return;

    if (isExist == false) {
      print("Request gone");
      var response = await http.get(
          Uri.parse("$endPoint/fixtures?date=$date&league=39&season=2022"),
          headers: {"x-apisports-key": apiKey1});
      // ignore: use_build_context_synchronously
      errorHandling(response, context);
      var jsonResponse = jsonDecode(response.body);
      var scheduleModel = ScheduleModel.fromJson(jsonResponse);
      // print(jsonResponse);
      print("First response");
      provider.scheduleModelData = scheduleModel;
      await Hive.openBox(date);
      var box = Hive.box(date);
      box.add(jsonResponse);
      print("boxadded");
    } else {
      print("Box exists");
      await Hive.openBox(date);
      var box = Hive.box(date);
      final data = box.values;
      // print(box.values.first);
      print("Second response");
      var scheduleModel = ScheduleModel.fromJson(box.values.first);
      provider.scheduleModelData = scheduleModel;
    }
  } on Exception catch (_) {
    showSnackBar("Something Went Wrong", context);
  }
}
