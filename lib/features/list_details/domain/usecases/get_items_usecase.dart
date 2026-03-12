import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/market_item.dart';
import '../repository/market_item_repository.dart';

@injectable
class GetItemsUseCase extends UseCase<List<MarketItem>, String> {
  final IMarketItemRepository repository;

  GetItemsUseCase(this.repository);

  @override
  Future<Either<Failure, List<MarketItem>>> call(String params) async {
    final result = await repository.getItems(params);

    return result.map((items) {
      final sortedItems = List<MarketItem>.from(items)
        ..sort((a, b) {
          if (a.isBought && !b.isBought) return 1;
          if (!a.isBought && b.isBought) return -1;
          return 0;
        });

      return sortedItems;
    });
  }
}
