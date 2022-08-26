import 'package:json_annotation/json_annotation.dart';

import 'goals.dart';

part 'home.g.dart';

@JsonSerializable()
class Home {
  int? played;
  int? win;
  int? draw;
  int? lose;
  Goals? goals;

  Home({this.played, this.win, this.draw, this.lose, this.goals});

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
