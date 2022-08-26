import 'package:json_annotation/json_annotation.dart';

import 'standing.dart';

part 'league.g.dart';

@JsonSerializable()
class League {
  int? id;
  String? name;
  String? country;
  String? logo;
  String? flag;
  int? season;
  List<List<Standing>>? standings;

  League({
    this.id,
    this.name,
    this.country,
    this.logo,
    this.flag,
    this.season,
    this.standings,
  });

  factory League.fromJson(Map<String, dynamic> json) {
    return _$LeagueFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeagueToJson(this);
}
