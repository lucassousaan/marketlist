// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarketListModelAdapter extends TypeAdapter<MarketListModel> {
  @override
  final typeId = 0;

  @override
  MarketListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarketListModel(
      id: fields[0] as String,
      name: fields[1] as String,
      totalItems: (fields[2] as num).toInt(),
      completedItems: (fields[3] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MarketListModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.totalItems)
      ..writeByte(3)
      ..write(obj.completedItems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarketListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
