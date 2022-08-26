import 'package:flutter/cupertino.dart';
import 'package:football_scores/model/point_table_model/point_table_model.dart';

import 'package:football_scores/model/schedule_model.dart';

class DataProvider with ChangeNotifier {
  // * Schedule Model
  ScheduleModel? _scheduleModel;
  ScheduleModel? get scheduleModel => _scheduleModel;

  set scheduleModelData(ScheduleModel value) {
    _scheduleModel = value;
    notifyListeners();
  }

  PointTableModel? pointTableModel;

  void pointTableData(value) {
    pointTableModel = value;
    notifyListeners();
  }
}
