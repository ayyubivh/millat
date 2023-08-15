// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namaz_method_hive_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NamazMethodDbModelAdapter extends TypeAdapter<NamazMethodDbModel> {
  @override
  final int typeId = 3;

  @override
  NamazMethodDbModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NamazMethodDbModel(
      autoDetectLocation: fields[0] as bool,
      automaticSetting: fields[1] as bool,
      showImsak: fields[2] as bool,
      location: fields[3] as String,
      calculationMethod: fields[4] as int,
      asrCalculationMethod: fields[5] as int,
      highLatitudeMethods: fields[6] as int,
      manualCorrections: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NamazMethodDbModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.autoDetectLocation)
      ..writeByte(1)
      ..write(obj.automaticSetting)
      ..writeByte(2)
      ..write(obj.showImsak)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.calculationMethod)
      ..writeByte(5)
      ..write(obj.asrCalculationMethod)
      ..writeByte(6)
      ..write(obj.highLatitudeMethods)
      ..writeByte(7)
      ..write(obj.manualCorrections);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamazMethodDbModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
