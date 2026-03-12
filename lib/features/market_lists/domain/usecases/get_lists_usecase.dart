import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/market_list.dart';
import '../repository/market_list_repository.dart';

@injectable
class GetListsUseCase implements UseCase<List<MarketList>, NoParams> {
  final IMarketListRepository repository;

  GetListsUseCase(this.repository);

  @override
  Future<Either<Failure, List<MarketList>>> call(NoParams params) {
    return repository.getLists();
  }
}
