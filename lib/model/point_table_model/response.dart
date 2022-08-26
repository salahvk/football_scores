import 'package:json_annotation/json_annotation.dart';

import 'league.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  League? league;

  Response({this.league});

  factory Response.fromJson(Map<String, dynamic> json) {
    return _$ResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
