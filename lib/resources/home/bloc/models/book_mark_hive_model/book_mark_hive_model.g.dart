// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_mark_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookMarkCollectionModelAdapter
    extends TypeAdapter<BookMarkCollectionModel> {
  @override
  final int typeId = 1;

  @override
  BookMarkCollectionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookMarkCollectionModel(
      id: fields[0] as String?,
      verseKey: (fields[4] as List).cast<String>(),
      name: fields[1] as String,
      description: fields[2] as String,
      image: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BookMarkCollectionModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.verseKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookMarkCollectionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
