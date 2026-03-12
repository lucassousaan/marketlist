import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:market_list/core/failures/failure.dart';
import 'package:market_list/features/list_details/domain/entities/market_item.dart';
import 'package:uuid/uuid.dart';

import '../../domain/repository/market_item_repository.dart';
import '../datasource/market_item_local_datasource.dart';
import '../models/market_item_model.dart';

@LazySingleton(as: IMarketItemRepository)
class MarketItemRepositoryImpl implements IMarketItemRepository {
  final IMarketItemLocalDatasource localDatasource;

  MarketItemRepositoryImpl(this.localDatasource);

  @override
  Future<Either<Failure, MarketItem>> addItem({
    required String listId,
    required String name,
  }) async {
    try {
      final newId = const Uuid().v4();
      final newItem = MarketItemModel(
        id: newId,
        listId: listId,
        name: name,
        isBought: false,
        createdAt: DateTime.now().millisecondsSinceEpoch,
      );

      await localDatasource.saveItem(newItem);
      return Right(newItem.toEntity());
    } catch (e) {
      return Left(DatabaseFailure('Failed to add item: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAllItemsFromList(String listId) async {
    try {
      await localDatasource.deleteItemsByListId(listId);
      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure('Failed to delete items from list: $e'));
    }
  }

  @override
  Future<Either<Failure, MarketItem>> deleteItem(String itemId) async {
    try {
      final itemModel = await localDatasource.getItemById(itemId);

      if (itemModel == null) {
        return Left(DatabaseFailure('Item not found.'));
      }

      await localDatasource.deleteItem(itemId);

      return Right(itemModel.toEntity());
    } catch (e) {
      return Left(DatabaseFailure('Failed to delete item: $e'));
    }
  }

  @override
  Future<Either<Failure, List<MarketItem>>> getItems(String listId) async {
    try {
      final models = await localDatasource.getItemsByListId(listId);

      final entities = models.map((model) => model.toEntity()).toList();
      final sortedEntities = entities
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return Right(sortedEntities);
    } catch (e) {
      return Left(DatabaseFailure('Failed to get items: $e'));
    }
  }

  @override
  Future<Either<Failure, MarketItem>> toggleItem(String itemId) async {
    try {
      final itemModel = await localDatasource.getItemById(itemId);

      if (itemModel == null) {
        return Left(DatabaseFailure('Item not found'));
      }

      final updatedModel = MarketItemModel(
        id: itemModel.id,
        listId: itemModel.listId,
        name: itemModel.name,
        isBought: !itemModel.isBought,
        createdAt: itemModel.createdAt,
      );

      await localDatasource.saveItem(updatedModel);
      return Right(updatedModel.toEntity());
    } catch (e) {
      return Left(DatabaseFailure('Failed to update item: $e'));
    }
  }
}
