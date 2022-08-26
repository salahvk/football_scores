import 'package:json_annotation/json_annotation.dart';

import 'goals.dart';

part 'away.g.dart';

@JsonSerializable()
class Away {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals? goals;

  Away({this.played, this.win, this.draw, this.lose, this.goals});

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);

  Map<String, dynamic> toJson() => _$AwayToJson(this);
}
