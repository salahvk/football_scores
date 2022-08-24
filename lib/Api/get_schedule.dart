import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:football_scores/Api/api_key.dart';
import 'package:football_scores/Api/endpoint.dart';
import 'package:football_scores/Api/error_handling.dart';
import 'package:football_scores/model/schedule_model.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/utils/snack_bar.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

getSchedule(BuildContext context, date) async {
  try {
    final provider = Provider.of<DataProvider>(context, listen: false);
    print("Request gone");
    var response = await http.get(
        Uri.parse("$endPoint/fixtures?date=$date&league=39&season=2022"),
        headers: {"x-apisports-key": apiKey1});
    errorHandling(response, context);
    var jsonResponse = jsonDecode(response.body);
    var scheduleModel = ScheduleModel.fromJson(jsonResponse);
    provider.scheduleModelData = scheduleModel;
  } on Exception catch (_) {
    showSnackBar("Something Went Wrong", context);
  }
}
