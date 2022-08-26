import 'package:flutter/cupertino.dart';

class LocalProvider with ChangeNotifier {
  int leagueIndex = 1;

  void leagueIndexData(value) {
    leagueIndex = value;
    notifyListeners();
  }

  String? sliderDate;

  void sliderDateData(value) {
    sliderDate = value;
    notifyListeners();
  }
}
