import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:market_list/core/di/injection.dart';
import 'package:market_list/core/theme/color_scheme.dart';

import 'features/list_details/data/models/market_item_model.dart';
import 'features/market_lists/data/models/market_list_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(MarketListModelAdapter());
  Hive.registerAdapter(MarketItemModelAdapter());

  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<GoRouter>();
    final textTheme = GoogleFonts.dmMonoTextTheme();
    final materialTheme = MaterialTheme(textTheme);

    return MaterialApp.router(
      title: 'Market List',
      routerConfig: appRouter,
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
