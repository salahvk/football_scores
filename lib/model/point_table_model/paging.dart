import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable()
class Paging {
  int? current;
  int? total;

  Paging({this.current, this.total});

  factory Paging.fromJson(Map<String, dynamic> json) {
    return _$PagingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PagingToJson(this);
}
