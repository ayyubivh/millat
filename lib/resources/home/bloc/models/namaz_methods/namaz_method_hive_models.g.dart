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
      automaticLocation: fields[1] as bool,
      showImsak: fields[2] as bool,
      location: fields[3] as String,
      calculationMethodName: fields[4] as String,
      asrCalculationMethod: fields[5] as String,
      highLatitudeMethods: fields[6] as String,
      manualCorrections: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NamazMethodDbModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.autoDetectLocation)
      ..writeByte(1)
      ..write(obj.automaticLocation)
      ..writeByte(2)
      ..write(obj.showImsak)
      ..writeByte(3)
      ..write(obj.location)
      ..writeByte(4)
      ..write(obj.calculationMethodName)
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
