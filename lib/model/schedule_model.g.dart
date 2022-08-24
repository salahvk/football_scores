// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ScheduleModelAdapter extends TypeAdapter<ScheduleModel> {
  @override
  final int typeId = 0;

  @override
  ScheduleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ScheduleModel(
      results: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ScheduleModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScheduleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ParametersAdapter extends TypeAdapter<Parameters> {
  @override
  final int typeId = 1;

  @override
  Parameters read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parameters();
  }

  @override
  void write(BinaryWriter writer, Parameters obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParametersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PagingAdapter extends TypeAdapter<Paging> {
  @override
  final int typeId = 2;

  @override
  Paging read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Paging();
  }

  @override
  void write(BinaryWriter writer, Paging obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PagingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResponseAdapter extends TypeAdapter<Response> {
  @override
  final int typeId = 3;

  @override
  Response read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Response(
      fixture: fields[1] as Fixture?,
    );
  }

  @override
  void write(BinaryWriter writer, Response obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.fixture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FixtureAdapter extends TypeAdapter<Fixture> {
  @override
  final int typeId = 4;

  @override
  Fixture read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fixture();
  }

  @override
  void write(BinaryWriter writer, Fixture obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FixtureAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PeriodsAdapter extends TypeAdapter<Periods> {
  @override
  final int typeId = 5;

  @override
  Periods read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Periods();
  }

  @override
  void write(BinaryWriter writer, Periods obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeriodsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VenueAdapter extends TypeAdapter<Venue> {
  @override
  final int typeId = 6;

  @override
  Venue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Venue();
  }

  @override
  void write(BinaryWriter writer, Venue obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VenueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatusAdapter extends TypeAdapter<Status> {
  @override
  final int typeId = 7;

  @override
  Status read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Status();
  }

  @override
  void write(BinaryWriter writer, Status obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LeagueAdapter extends TypeAdapter<League> {
  @override
  final int typeId = 8;

  @override
  League read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return League();
  }

  @override
  void write(BinaryWriter writer, League obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LeagueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TeamsAdapter extends TypeAdapter<Teams> {
  @override
  final int typeId = 9;

  @override
  Teams read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Teams(
      home: fields[1] as Home?,
      away: fields[2] as Home?,
    );
  }

  @override
  void write(BinaryWriter writer, Teams obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.home)
      ..writeByte(2)
      ..write(obj.away);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HomeAdapter extends TypeAdapter<Home> {
  @override
  final int typeId = 10;

  @override
  Home read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Home(
      name: fields[1] as String?,
      winner: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Home obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.winner);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GoalsAdapter extends TypeAdapter<Goals> {
  @override
  final int typeId = 11;

  @override
  Goals read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Goals();
  }

  @override
  void write(BinaryWriter writer, Goals obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoalsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ScoreAdapter extends TypeAdapter<Score> {
  @override
  final int typeId = 12;

  @override
  Score read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Score();
  }

  @override
  void write(BinaryWriter writer, Score obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScoreAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExtratimeAdapter extends TypeAdapter<Extratime> {
  @override
  final int typeId = 13;

  @override
  Extratime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Extratime();
  }

  @override
  void write(BinaryWriter writer, Extratime obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExtratimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
