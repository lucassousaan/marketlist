// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:hive_ce/hive.dart' as _i738;
import 'package:hive_ce/hive_ce.dart' as _i1055;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/list_details/data/datasource/market_item_local_datasource.dart'
    as _i566;
import '../../features/list_details/data/models/market_item_model.dart'
    as _i276;
import '../../features/list_details/data/repository/market_item_repository_impl.dart'
    as _i449;
import '../../features/list_details/domain/repository/market_item_repository.dart'
    as _i663;
import '../../features/list_details/domain/usecases/add_item_usecase.dart'
    as _i740;
import '../../features/list_details/domain/usecases/delete_item_usecase.dart'
    as _i375;
import '../../features/list_details/domain/usecases/get_items_usecase.dart'
    as _i600;
import '../../features/list_details/domain/usecases/toggle_item_usecase.dart'
    as _i195;
import '../../features/list_details/presentation/providers/market_item_provider.dart'
    as _i4;
import '../../features/market_lists/data/datasource/market_list_local_datasource.dart'
    as _i693;
import '../../features/market_lists/data/models/market_list_model.dart'
    as _i233;
import '../../features/market_lists/data/repository/market_list_repository_impl.dart'
    as _i129;
import '../../features/market_lists/domain/repository/market_list_repository.dart'
    as _i810;
import '../../features/market_lists/domain/usecases/create_list_usecase.dart'
    as _i731;
import '../../features/market_lists/domain/usecases/delete_list_usecase.dart'
    as _i392;
import '../../features/market_lists/domain/usecases/get_lists_usecase.dart'
    as _i818;
import '../../features/market_lists/presentation/providers/market_list_provider.dart'
    as _i626;
import '../db/hive_module.dart' as _i690;
import '../router/router_module.dart' as _i948;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  final routerModule = _$RouterModule();
  await gh.factoryAsync<_i738.Box<String>>(
    () => hiveModule.stringBox,
    preResolve: true,
  );
  await gh.factoryAsync<_i738.Box<_i233.MarketListModel>>(
    () => hiveModule.marketListBox,
    preResolve: true,
  );
  await gh.factoryAsync<_i738.Box<_i276.MarketItemModel>>(
    () => hiveModule.marketItemBox,
    preResolve: true,
  );
  gh.singleton<_i583.GoRouter>(() => routerModule.router);
  gh.lazySingleton<_i566.IMarketItemLocalDatasource>(
    () => _i566.MarketItemLocalDatasourceImpl(
      gh<_i1055.Box<_i276.MarketItemModel>>(),
    ),
  );
  gh.lazySingleton<_i693.IMarketListLocalDatasource>(
    () => _i693.MarketListLocalDatasourceImpl(
      gh<_i1055.Box<_i233.MarketListModel>>(),
    ),
  );
  gh.lazySingleton<_i663.IMarketItemRepository>(
    () =>
        _i449.MarketItemRepositoryImpl(gh<_i566.IMarketItemLocalDatasource>()),
  );
  gh.factory<_i600.GetItemsUseCase>(
    () => _i600.GetItemsUseCase(gh<_i663.IMarketItemRepository>()),
  );
  gh.lazySingleton<_i810.IMarketListRepository>(
    () =>
        _i129.MarketListRepositoryImpl(gh<_i693.IMarketListLocalDatasource>()),
  );
  gh.factory<_i740.AddItemUseCase>(
    () => _i740.AddItemUseCase(
      gh<_i663.IMarketItemRepository>(),
      gh<_i810.IMarketListRepository>(),
    ),
  );
  gh.factory<_i375.DeleteItemUseCase>(
    () => _i375.DeleteItemUseCase(
      gh<_i663.IMarketItemRepository>(),
      gh<_i810.IMarketListRepository>(),
    ),
  );
  gh.factory<_i195.ToggleItemUseCase>(
    () => _i195.ToggleItemUseCase(
      gh<_i663.IMarketItemRepository>(),
      gh<_i810.IMarketListRepository>(),
    ),
  );
  gh.factory<_i4.MarketItemProvider>(
    () => _i4.MarketItemProvider(
      gh<_i740.AddItemUseCase>(),
      gh<_i375.DeleteItemUseCase>(),
      gh<_i600.GetItemsUseCase>(),
      gh<_i195.ToggleItemUseCase>(),
    ),
  );
  gh.factory<_i731.CreateListUseCase>(
    () => _i731.CreateListUseCase(gh<_i810.IMarketListRepository>()),
  );
  gh.factory<_i818.GetListsUseCase>(
    () => _i818.GetListsUseCase(gh<_i810.IMarketListRepository>()),
  );
  gh.factory<_i392.DeleteListUseCase>(
    () => _i392.DeleteListUseCase(
      gh<_i810.IMarketListRepository>(),
      gh<_i663.IMarketItemRepository>(),
    ),
  );
  gh.factory<_i626.MarketListProvider>(
    () => _i626.MarketListProvider(
      gh<_i818.GetListsUseCase>(),
      gh<_i731.CreateListUseCase>(),
      gh<_i392.DeleteListUseCase>(),
    ),
  );
  return getIt;
}

class _$HiveModule extends _i690.HiveModule {}

class _$RouterModule extends _i948.RouterModule {}
