import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

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
          return const SizedBox();
        },
      ),
      GoRoute(
        path: AppRoute.details.path,
        name: AppRoute.details.name,
        builder: (context, state) {
          return const SizedBox();
        },
      ),
    ],
  );
}
