import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:injectable/injectable.dart';
import 'package:market_list/core/failures/failure.dart';
import 'package:market_list/features/list_details/domain/entities/market_item.dart';

import '../../domain/repository/market_item_repository.dart';

@LazySingleton(as: IMarketItemRepository)
class MarketItemRepositoryImpl implements IMarketItemRepository {
  @override
  Future<Either<Failure, MarketItem>> addItem({
    required String listId,
    required String name,
  }) {
    // TODO: implement addItem
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteAllItemsFromList(String listId) {
    // TODO: implement deleteAllItemsFromList
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MarketItem>> deleteItem(String itemId) {
    // TODO: implement deleteItem
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MarketItem>>> getItems(String listId) {
    // TODO: implement getItems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MarketItem>> toggleItem(String itemId) {
    // TODO: implement toggleItem
    throw UnimplementedError();
  }
}
