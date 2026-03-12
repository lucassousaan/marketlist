import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/add_item_usecase.dart';
import '../../domain/usecases/delete_item_usecase.dart';
import '../../domain/usecases/get_items_usecase.dart';
import '../../domain/usecases/toggle_item_usecase.dart';
import 'market_item_state.dart';

@injectable
class MarketItemProvider extends ChangeNotifier {
  final AddItemUseCase _addItemUseCase;
  final DeleteItemUseCase _deleteItemUseCase;
  final GetItemsUseCase _getItemsUseCase;
  final ToggleItemUseCase _toggleItemUseCase;

  MarketItemState _state = MarketItemState.initial();
  MarketItemState get state => _state;

  String? _currentListId;

  MarketItemProvider(
    this._addItemUseCase,
    this._deleteItemUseCase,
    this._getItemsUseCase,
    this._toggleItemUseCase,
  );

  Future<void> loadItems(String listId) async {
    _currentListId = listId;
    _setState(MarketItemState.loading());

    final result = await _getItemsUseCase(listId);

    result.fold(
      (failure) => _setState(MarketItemState.error(failure.message)),
      (items) {
        if (items.isEmpty) {
          _setState(MarketItemState.empty());
        } else {
          _setState(MarketItemState.success(items));
        }
      },
    );
  }

  Future<void> addItem(String name) async {
    if (_currentListId == null) return;

    final result = await _addItemUseCase(
      AddItemParams(listId: _currentListId!, name: name),
    );

    result.fold(
      (failure) => _setState(MarketItemState.error(failure.message)),
      (_) {
        loadItems(_currentListId!);
      },
    );
  }

  Future<void> toggleItem(String itemId) async {
    if (_currentListId == null) return;

    final result = await _toggleItemUseCase(itemId);

    result.fold(
      (failure) => _setState(MarketItemState.error(failure.message)),
      (_) {
        loadItems(_currentListId!);
      },
    );
  }

  Future<void> deleteItem(String itemId) async {
    if (_currentListId == null) return;

    final result = await _deleteItemUseCase(itemId);

    result.fold(
      (failure) => _setState(MarketItemState.error(failure.message)),
      (_) {
        loadItems(_currentListId!);
      },
    );
  }

  void _setState(MarketItemState newState) {
    _state = newState;
    notifyListeners();
  }
}
