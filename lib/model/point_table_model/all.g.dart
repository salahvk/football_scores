// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

All _$AllFromJson(Map<String, dynamic> json) => All(
      played: json['played'] as int?,
      win: json['win'] as int?,
      draw: json['draw'] as int?,
      lose: json['lose'] as int?,
      goals: json['goals'] == null
          ? null
          : Goals.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AllToJson(All instance) => <String, dynamic>{
      'played': instance.played,
      'win': instance.win,
      'draw': instance.draw,
      'lose': instance.lose,
      'goals': instance.goals,
    };
