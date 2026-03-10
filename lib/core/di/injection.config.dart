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
import 'package:injectable/injectable.dart' as _i526;

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
  gh.singleton<_i583.GoRouter>(() => routerModule.router);
  return getIt;
}

class _$HiveModule extends _i690.HiveModule {}

class _$RouterModule extends _i948.RouterModule {}
