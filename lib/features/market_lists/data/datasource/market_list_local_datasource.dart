import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../models/market_list_model.dart';

abstract class IMarketListLocalDatasource {
  Future<List<MarketListModel>> getLists();
  Future<void> saveList(MarketListModel list);
  Future<void> deleteList(String id);
}

@LazySingleton(as: IMarketListLocalDatasource)
class MarketListLocalDatasourceImpl implements IMarketListLocalDatasource {
  final Box<MarketListModel> listBox;

  MarketListLocalDatasourceImpl(this.listBox);

  @override
  Future<List<MarketListModel>> getLists() async {
    return listBox.values.toList();
  }

  @override
  Future<void> saveList(MarketListModel listModel) async {
    await listBox.put(listModel.id, listModel);
  }

  @override
  Future<void> deleteList(String id) async {
    await listBox.delete(id);
  }
}
