import 'package:json_annotation/json_annotation.dart';

import 'all.dart';
import 'away.dart';
import 'home.dart';
import 'team.dart';

part 'standing.g.dart';

@JsonSerializable()
class Standing {
  int? rank;
  Team? team;
  int? points;
  int? goalsDiff;
  String? group;
  String? form;
  String? status;
  String? description;
  All? all;
  Home? home;
  Away? away;
  String? update;

  Standing({
    this.rank,
    this.team,
    this.points,
    this.goalsDiff,
    this.group,
    this.form,
    this.status,
    this.description,
    this.all,
    this.home,
    this.away,
    this.update,
  });

  factory Standing.fromJson(Map<String, dynamic> json) {
    return _$StandingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StandingToJson(this);
}
