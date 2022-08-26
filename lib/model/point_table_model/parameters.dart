import 'package:json_annotation/json_annotation.dart';

part 'parameters.g.dart';

@JsonSerializable()
class Parameters {
  String? league;
  String? season;

  Parameters({this.league, this.season});

  factory Parameters.fromJson(Map<String, dynamic> json) {
    return _$ParametersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParametersToJson(this);
}
