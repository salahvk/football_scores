// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointTableModel _$PointTableModelFromJson(Map<String, dynamic> json) =>
    PointTableModel(
      pointTableModelGet: json['get'] as String?,
      parameters: json['parameters'] == null
          ? null
          : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>?,
      results: json['results'] as int?,
      paging: json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PointTableModelToJson(PointTableModel instance) =>
    <String, dynamic>{
      'get': instance.pointTableModelGet,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };
