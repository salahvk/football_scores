import 'package:json_annotation/json_annotation.dart';

import 'paging.dart';
import 'parameters.dart';
import 'response.dart';

part 'point_table_model.g.dart';

@JsonSerializable()
class PointTableModel {
  @JsonKey(name: 'get')
  String? pointTableModelGet;
  Parameters? parameters;
  List<dynamic>? errors;
  int? results;
  Paging? paging;
  List<Response>? response;

  PointTableModel({
    this.pointTableModelGet,
    this.parameters,
    this.errors,
    this.results,
    this.paging,
    this.response,
  });

  factory PointTableModel.fromJson(Map<String, dynamic> json) {
    return _$PointTableModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PointTableModelToJson(this);
}
