import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/list_details/data/models/market_item_model.dart';
import '../../features/market_lists/data/models/market_list_model.dart';

@module
abstract class HiveModule {
  @preResolve
  Future<Box<String>> get stringBox => Hive.openBox<String>('my_string_box');

  @preResolve
  Future<Box<MarketListModel>> get marketListBox =>
      Hive.openBox<MarketListModel>('market_lists_box');

  @preResolve
  Future<Box<MarketItemModel>> get marketItemBox =>
      Hive.openBox<MarketItemModel>('market_items_box');
}
