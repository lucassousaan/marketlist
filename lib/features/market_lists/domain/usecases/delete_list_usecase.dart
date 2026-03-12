import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../list_details/domain/repository/market_item_repository.dart';
import '../repository/market_list_repository.dart';

@injectable
class DeleteListUseCase extends UseCase<Unit, String> {
  final IMarketListRepository repository;
  final IMarketItemRepository itemRepository;

  DeleteListUseCase(this.repository, this.itemRepository);

  @override
  Future<Either<Failure, Unit>> call(String listId) async {
    final listResult = await repository.deleteList(listId);
    return listResult.fold((failure) => Left(failure), (_) async {
      await itemRepository.deleteAllItemsFromList(listId);
      return const Right(unit);
    });
  }
}
