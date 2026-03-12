import 'package:fpdart/fpdart.dart';

import '../../../../core/failures/failure.dart';
import '../entities/market_item.dart';

abstract class IMarketItemRepository {
  /// Gets all items for the market list with the given [listId].
  /// Returns a [List] of [MarketItem] on success, or a [Failure] on error.
  /// The [listId] parameter specifies the ID of the market list to retrieve items for.
  Future<Either<Failure, List<MarketItem>>> getItems(String listId);

  /// Adds a new item to the market list with the given [listId] and [name].
  /// Returns the created [MarketItem] on success, or a [Failure] on error.
  /// The [listId] parameter specifies the ID of the market list to add the item to, and the [name] parameter specifies the name of the item to be added.
  Future<Either<Failure, MarketItem>> addItem({
    required String listId,
    required String name,
  });

  /// Toggles the completion status of the item with the given [itemId].
  /// Returns the updated [MarketItem] on success, or a [Failure] on error.
  /// The [itemId] parameter specifies the ID of the item to toggle.
  Future<Either<Failure, MarketItem>> toggleItem(String itemId);

  /// Deletes the item with the given [itemId].
  /// Returns the deleted [MarketItem] on success, or a [Failure] on error.
  /// The [itemId] parameter specifies the ID of the item to delete.
  Future<Either<Failure, MarketItem>> deleteItem(String itemId);

  /// Deletes all items from the market list with the given [listId].
  /// Returns [Unit] on success, or a [Failure] on error.
  /// The [listId] parameter specifies the ID of the market list to delete items from
  Future<Either<Failure, Unit>> deleteAllItemsFromList(String listId);
}
