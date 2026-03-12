import 'package:hive_ce/hive_ce.dart';
import 'package:market_list/features/market_lists/domain/entities/market_list.dart';

part 'market_list_model.g.dart';

@HiveType(typeId: 0)
class MarketListModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int totalItems;

  @HiveField(3)
  final int completedItems;

  @HiveField(4)
  final int createdAt;

  MarketListModel({
    required this.id,
    required this.name,
    required this.totalItems,
    required this.completedItems,
    required this.createdAt,
  });

  // Converts the Domain Entity to the Data Model
  factory MarketListModel.fromEntity(MarketList entity) {
    return MarketListModel(
      id: entity.id,
      name: entity.name,
      totalItems: entity.totalItems,
      completedItems: entity.completedItems,
      createdAt: entity.createdAt.millisecondsSinceEpoch,
    );
  }

  // Converts the Data Model back to the Domain Entity
  MarketList toEntity() {
    return MarketList(
      id: id,
      name: name,
      totalItems: totalItems,
      completedItems: completedItems,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAt),
    );
  }
}
