import 'package:json_annotation/json_annotation.dart';

import 'goals.dart';

part 'all.g.dart';

@JsonSerializable()
class All {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals? goals;

  All({this.played, this.win, this.draw, this.lose, this.goals});

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);

  Map<String, dynamic> toJson() => _$AllToJson(this);
}
