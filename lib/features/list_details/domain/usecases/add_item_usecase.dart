import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../market_lists/domain/repository/market_list_repository.dart';
import '../entities/market_item.dart';
import '../repository/market_item_repository.dart';

@injectable
class AddItemUseCase extends UseCase<MarketItem, AddItemParams> {
  final IMarketItemRepository repository;
  final IMarketListRepository listRepository;

  AddItemUseCase(this.repository, this.listRepository);

  @override
  Future<Either<Failure, MarketItem>> call(AddItemParams params) async {
    final result = await repository.addItem(
      listId: params.listId,
      name: params.name,
    );

    return result.fold((failure) => Left(failure), (item) async {
      await listRepository.updateCounters(listId: params.listId, totalDelta: 1);

      return Right(item);
    });
  }
}

class AddItemParams extends Equatable {
  final String listId;
  final String name;

  const AddItemParams({required this.listId, required this.name});

  @override
  List<Object?> get props => [listId, name];
}
