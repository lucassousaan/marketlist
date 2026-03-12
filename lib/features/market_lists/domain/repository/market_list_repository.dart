import 'package:fpdart/fpdart.dart';

import '../../../../core/failures/failure.dart';
import '../entities/market_list.dart';

abstract class IMarketListRepository {
  /// Gets all market lists.
  /// Returns a [List] of [MarketList] on success, or a [Failure] on error.
  Future<Either<Failure, List<MarketList>>> getLists();

  /// Creates a new market list with the given [name].
  /// Returns the created [MarketList] on success, or a [Failure] on error.
  Future<Either<Failure, MarketList>> createList(String name);

  /// Deletes the market list with the given [id].
  /// Returns [Unit] on success, or a [Failure] on error.
  Future<Either<Failure, Unit>> deleteList(String id);

  /// Updates the counters of a market list.
  /// [totalDelta] is the change in total items (positive to add, negative to remove).
  /// [completedDelta] is the change in completed items (positive to add, negative to
  /// remove).
  /// Returns [Unit] on success, or a [Failure] on error.
  Future<Either<Failure, Unit>> updateCounters({
    required String listId,
    int totalDelta = 0,
    int completedDelta = 0,
  });
}
