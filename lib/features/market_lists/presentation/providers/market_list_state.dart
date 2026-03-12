import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/market_list.dart';

part 'market_list_state.freezed.dart';

@freezed
abstract class MarketListState with _$MarketListState {
  const factory MarketListState.initial() = _Initial;
  const factory MarketListState.loading() = _Loading;
  const factory MarketListState.success(List<MarketList> list) = _Success;
  const factory MarketListState.empty() = _Empty;
  const factory MarketListState.error(String message) = _Error;
}
