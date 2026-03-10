import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_list.freezed.dart';

@freezed
abstract class MarketList with _$MarketList {
  const factory MarketList({
    required String id,
    required String name,
    @Default(0) int totalItems,
    @Default(0) int completedItems,
  }) = _MarketList;
}
