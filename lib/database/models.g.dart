// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentupdateAdapter extends TypeAdapter<Studentupdate> {
  @override
  final int typeId = 1;

  @override
  Studentupdate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Studentupdate(
      domain: fields[2] as String?,
      place: fields[5] as String?,
      image: fields[3] as String?,
      name: fields[0] as String?,
      phone: fields[1] as int?,
      id: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Studentupdate obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.domain)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.place);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentupdateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
