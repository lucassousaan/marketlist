import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_item.freezed.dart';

@freezed
abstract class MarketItem with _$MarketItem {
  const factory MarketItem({
    required String id,
    required String listId,
    required String name,
    required DateTime createdAt,
    @Default(false) bool isBought,
  }) = _MarketItem;
}
