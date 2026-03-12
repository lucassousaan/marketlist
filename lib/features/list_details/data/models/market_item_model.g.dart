// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MarketItemModelAdapter extends TypeAdapter<MarketItemModel> {
  @override
  final typeId = 1;

  @override
  MarketItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MarketItemModel(
      id: fields[0] as String,
      listId: fields[1] as String,
      name: fields[2] as String,
      isBought: fields[3] == null ? false : fields[3] as bool,
      createdAt: (fields[4] as num).toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, MarketItemModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.listId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.isBought)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarketItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
