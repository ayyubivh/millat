// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_tracker_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PrayerTrackerModelAdapter extends TypeAdapter<PrayerTrackerModel> {
  @override
  final int typeId = 2;

  @override
  PrayerTrackerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PrayerTrackerModel(
      fajr: fields[0] as bool,
      dhuhr: fields[1] as bool,
      asr: fields[2] as bool,
      magrib: fields[3] as bool,
      isha: fields[4] as bool,
      date: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, PrayerTrackerModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.fajr)
      ..writeByte(1)
      ..write(obj.dhuhr)
      ..writeByte(2)
      ..write(obj.asr)
      ..writeByte(3)
      ..write(obj.magrib)
      ..writeByte(4)
      ..write(obj.isha)
      ..writeByte(5)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrayerTrackerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
