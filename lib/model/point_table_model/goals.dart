import 'package:json_annotation/json_annotation.dart';

part 'goals.g.dart';

@JsonSerializable()
class Goals {
  @JsonKey(name: 'for')
  int? goalsFor;
  int? against;

  Goals({this.goalsFor, this.against});

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsToJson(this);
}
