import 'package:hive_ce/hive_ce.dart';

import '../../domain/entities/market_item.dart';

part 'market_item_model.g.dart';

@HiveType(typeId: 1)
class MarketItemModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String listId;

  @HiveField(2)
  final String name;

  @HiveField(3, defaultValue: false)
  final bool isBought;

  @HiveField(4)
  final int createdAt;

  MarketItemModel({
    required this.id,
    required this.listId,
    required this.name,
    required this.isBought,
    required this.createdAt,
  });

  factory MarketItemModel.fromEntity(MarketItem entity) {
    return MarketItemModel(
      id: entity.id,
      listId: entity.listId,
      name: entity.name,
      isBought: entity.isBought,
      createdAt: entity.createdAt.millisecondsSinceEpoch,
    );
  }

  MarketItem toEntity() {
    return MarketItem(
      id: id,
      listId: listId,
      name: name,
      isBought: isBought,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
    );
  }
}
