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
  Future<Either<Failure, List<MarketItem>>> call(String params) {
    return repository.getItems(params);
  }
}
