import 'dart:convert';

import 'package:football_scores/Api/api_key.dart';
import 'package:football_scores/Api/endpoint.dart';
import 'package:football_scores/Api/error_handling.dart';
import 'package:football_scores/model/point_table_model/point_table_model.dart';
import 'package:football_scores/utils/snack_bar.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:provider/provider.dart';

getStandings(
  BuildContext context,
) async {
  final provider = Provider.of<DataProvider>(context, listen: false);
  try {
    var response = await http.get(
        Uri.parse(
          "$endPoint/standings?league=39&season=2022",
        ),
        headers: {"x-apisports-key": apiKey1});
    // ignore: use_build_context_synchronously
    errorHandling(response, context);
    var jsonResponse = jsonDecode(response.body);
    var pointTable = PointTableModel.fromJson(jsonResponse);
    provider.pointTableData(pointTable);
  } on Exception catch (_) {
    showSnackBar("Something Went Wrong", context);
  }
}
