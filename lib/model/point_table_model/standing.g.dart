// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Standing _$StandingFromJson(Map<String, dynamic> json) => Standing(
      rank: json['rank'] as int?,
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      points: json['points'] as int?,
      goalsDiff: json['goalsDiff'] as int?,
      group: json['group'] as String?,
      form: json['form'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      all: json['all'] == null
          ? null
          : All.fromJson(json['all'] as Map<String, dynamic>),
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      away: json['away'] == null
          ? null
          : Away.fromJson(json['away'] as Map<String, dynamic>),
      update: json['update'] as String?,
    );

Map<String, dynamic> _$StandingToJson(Standing instance) => <String, dynamic>{
      'rank': instance.rank,
      'team': instance.team,
      'points': instance.points,
      'goalsDiff': instance.goalsDiff,
      'group': instance.group,
      'form': instance.form,
      'status': instance.status,
      'description': instance.description,
      'all': instance.all,
      'home': instance.home,
      'away': instance.away,
      'update': instance.update,
    };
