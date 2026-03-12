import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:market_list/core/failures/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/market_list.dart';
import '../repository/market_list_repository.dart';

@injectable
class CreateListUseCase extends UseCase<MarketList, String> {
  final IMarketListRepository repository;

  CreateListUseCase(this.repository);

  @override
  Future<Either<Failure, MarketList>> call(String params) {
    return repository.createList(params);
  }
}
