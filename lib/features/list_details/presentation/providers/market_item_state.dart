import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/market_item.dart';

part 'market_item_state.freezed.dart';

@freezed
abstract class MarketItemState with _$MarketItemState {
  const factory MarketItemState.initial() = _Initial;
  const factory MarketItemState.loading() = _Loading;
  const factory MarketItemState.success(List<MarketItem> list) = _Success;
  const factory MarketItemState.empty() = _Empty;
  const factory MarketItemState.error(String message) = _Error;
}
