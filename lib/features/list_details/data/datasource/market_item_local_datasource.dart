import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../models/market_item_model.dart';

abstract class IMarketItemLocalDatasource {
  Future<List<MarketItemModel>> getItemsByListId(String listId);
  Future<MarketItemModel?> getItemById(String itemId);
  Future<void> saveItem(MarketItemModel item);
  Future<void> deleteItem(String id);
  Future<void> deleteItemsByListId(String listId);
}

@LazySingleton(as: IMarketItemLocalDatasource)
class MarketItemLocalDatasourceImpl implements IMarketItemLocalDatasource {
  final Box<MarketItemModel> itemBox;

  MarketItemLocalDatasourceImpl(this.itemBox);

  @override
  Future<List<MarketItemModel>> getItemsByListId(String listId) async {
    return itemBox.values.where((item) => item.listId == listId).toList();
  }

  @override
  Future<MarketItemModel?> getItemById(String itemId) async {
    return itemBox.get(itemId);
  }

  @override
  Future<void> saveItem(MarketItemModel item) async {
    await itemBox.put(item.id, item);
  }

  @override
  Future<void> deleteItem(String id) async {
    await itemBox.delete(id);
  }

  @override
  Future<void> deleteItemsByListId(String listId) async {
    final keysToDelete = itemBox.values
        .where((item) => item.listId == listId)
        .map((item) => item.id)
        .toList();

    await itemBox.deleteAll(keysToDelete);
  }
}
