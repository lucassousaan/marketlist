import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/failures/failure.dart';
import '../../domain/entities/market_list.dart';
import '../../domain/repository/market_list_repository.dart';
import '../datasource/market_list_local_datasource.dart';
import '../models/market_list_model.dart';

@LazySingleton(as: IMarketListRepository)
class MarketListRepositoryImpl implements IMarketListRepository {
  final IMarketListLocalDatasource localDatasource;

  MarketListRepositoryImpl(this.localDatasource);

  @override
  Future<Either<Failure, List<MarketList>>> getLists() async {
    try {
      final models = await localDatasource.getLists();
      final entities = models.map((list) => list.toEntity()).toList();
      return Right(entities);
    } catch (e) {
      return Left(DatabaseFailure('Failed to get market lists: $e'));
    }
  }

  @override
  Future<Either<Failure, MarketList>> createList(String name) async {
    try {
      final newId = const Uuid().v4();

      final newListModel = MarketListModel(
        id: newId,
        name: name,
        totalItems: 0,
        completedItems: 0,
      );

      await localDatasource.saveList(newListModel);

      return Right(newListModel.toEntity());
    } catch (e) {
      return Left(DatabaseFailure('Failed to create market list: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteList(String id) async {
    try {
      await localDatasource.deleteList(id);

      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure('Failed to delete market list: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateCounters({
    required String listId,
    int totalDelta = 0,
    int completedDelta = 0,
  }) async {
    try {
      final lists = await localDatasource.getLists();
      final listModel = lists.firstWhere((list) => list.id == listId);

      final updatedModel = MarketListModel(
        id: listModel.id,
        name: listModel.name,
        totalItems: listModel.totalItems + totalDelta,
        completedItems: listModel.completedItems + completedDelta,
      );

      await localDatasource.saveList(updatedModel);

      return const Right(unit);
    } catch (e) {
      return Left(DatabaseFailure('Failed to update counters: $e'));
    }
  }
}
