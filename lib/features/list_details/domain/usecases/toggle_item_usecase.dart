import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../market_lists/domain/repository/market_list_repository.dart';
import '../entities/market_item.dart';
import '../repository/market_item_repository.dart';

@injectable
class ToggleItemUseCase extends UseCase<MarketItem, String> {
  final IMarketItemRepository repository;
  final IMarketListRepository listRepository;

  ToggleItemUseCase(this.repository, this.listRepository);

  @override
  Future<Either<Failure, MarketItem>> call(String params) async {
    final result = await repository.toggleItem(params);
    return result.fold((failure) => Left(failure), (item) async {
      await listRepository.updateCounters(
        listId: item.listId,
        completedDelta: item.isBought ? 1 : -1,
      );

      return Right(item);
    });
  }
}
