import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/create_list_usecase.dart';
import '../../domain/usecases/delete_list_usecase.dart';
import '../../domain/usecases/get_lists_usecase.dart';
import 'market_list_state.dart';

@injectable
class MarketListProvider extends ChangeNotifier {
  final GetListsUseCase _getListsUseCase;
  final CreateListUseCase _createListUseCase;
  final DeleteListUseCase _deleteListUseCase;

  MarketListState _state = MarketListState.initial();
  MarketListState get state => _state;

  MarketListProvider(
    this._getListsUseCase,
    this._createListUseCase,
    this._deleteListUseCase,
  );

  Future<void> loadLists() async {
    _setState(const MarketListState.loading());

    final result = await _getListsUseCase(NoParams());

    result.fold(
      (failure) => _setState(MarketListState.error(failure.message)),
      (lists) {
        if (lists.isEmpty) {
          _setState(const MarketListState.empty());
        } else {
          _setState(MarketListState.success(lists));
        }
      },
    );
  }

  Future<void> createList(String name) async {
    final result = await _createListUseCase(name);

    result.fold(
      (failure) => _setState(MarketListState.error(failure.message)),
      (newList) {
        loadLists();
      },
    );
  }

  Future<void> deleteList(String id) async {
    final result = await _deleteListUseCase(id);

    result.fold(
      (failure) => _setState(MarketListState.error(failure.message)),
      (success) {
        loadLists();
      },
    );
  }

  void _setState(MarketListState newState) {
    _state = newState;
    notifyListeners();
  }
}
