import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

import '../../features/market_lists/data/models/market_list_model.dart';

@module
abstract class HiveModule {
  @preResolve
  Future<Box<String>> get stringBox => Hive.openBox<String>('my_string_box');

  @preResolve
  Future<Box<MarketListModel>> get marketListBox =>
      Hive.openBox<MarketListModel>('market_lists_box');
}
