import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

import '../../features/list_details/presentation/pages/market_item_page.dart';
import '../../features/list_details/presentation/providers/market_item_provider.dart';
import '../../features/market_lists/presentation/pages/market_lists_page.dart';
import '../../features/market_lists/presentation/providers/market_list_provider.dart';
import '../di/injection.dart';

enum AppRoute {
  lists('/', 'market_lists'),
  details('/details', 'list_details');

  final String path;
  final String name;

  const AppRoute(this.path, this.name);
}

@module
abstract class RouterModule {
  @singleton
  GoRouter get router => GoRouter(
    initialLocation: AppRoute.lists.path,
    routes: [
      GoRoute(
        path: AppRoute.lists.path,
        name: AppRoute.lists.name,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => getIt<MarketListProvider>()..loadLists(),
            child: const MarketListsPage(),
          );
        },
      ),
      GoRoute(
        path: AppRoute.details.path,
        name: AppRoute.details.name,
        builder: (context, state) {
          final listId = state.extra as String;
          return ChangeNotifierProvider(
            create: (_) => getIt<MarketItemProvider>()..loadItems(listId),
            child: MarketItemPage(listId: listId),
          );
        },
      ),
    ],
  );
}
