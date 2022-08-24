List<DateTime> getDates() {
  final today = DateTime.now();

  List<DateTime> list = [];
  for (var i = 30; i >= 1; i--) {
    final thirtyDaysbefore = today.subtract(Duration(days: i));

    list.add(thirtyDaysbefore);
  }
  for (var i = 0; i <= 30; i++) {
    final thirtyDaysAfter = today.add(Duration(days: i));

    list.add(thirtyDaysAfter);
  }
  return list;
}
